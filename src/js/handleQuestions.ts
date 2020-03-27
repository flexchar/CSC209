export async function fetchQuestions() {
    const cached = localStorage.getItem('quiz');
    if (cached) return JSON.parse(cached);

    const questions = await fetch(
        `https://raw.githubusercontent.com/flexchar/chemikas_chatbot/master/models/output.json`
    )
        .then(res => res.json())
        .catch(console.error);

    localStorage.setItem('quiz', JSON.stringify(questions));

    return questions;
}

export async function displayQuestions() {
    const items = await fetchQuestions();

    const table = document.querySelector('[data-questions]');

    const rows = items.map(item => {
        const tr = document.createElement('tr');

        tr.innerHTML = `
            <td align="center">${item.title}</td>
            <td class="truncate max-w-xs lg:break-words lg:max-w-screen-sm" title="${item.question}">${item.question}</td>
            <td align="center">${item.points}</td>
            `;

        return tr;
    });

    table.innerHTML = null;

    // JavaScript way
    // table.append(...rows);
    // jQuery way
    $(table).append(...rows);
}

interface question {
    category: string;
    question: string;
    answer: string;
    points: number;
}

export async function startQuiz() {
    const allQs: question[] = await fetchQuestions();
    const storeStr = localStorage.getItem('answers');
    const store: question[] = JSON.parse(storeStr) || [];

    const theQ: question = allQs.find(
        quest => !store.find(i => i.question === quest.question)
    );

    if (!theQ) {
        alert(`Couldn't find question, sorry`);
        return;
    }

    const title = document.querySelector(
        '[data-quiz-question]'
    ) as HTMLParagraphElement;
    const submit = document.querySelector('[data-quiz-submit]');

    title.innerText = theQ.question;

    submit.addEventListener(
        'click',
        () => {
            const answer = document.querySelector('[data-quiz-answer]');

            if (answer.value !== theQ.answer) {
                alert(`Ups! Try again...`);
                return;
            }

            store.push(theQ);
            localStorage.setItem('answers', JSON.stringify(store));

            alert(`Yayyy! You got ${theQ.points}`);

            // Reset the play
            answer.value = null;
            startQuiz();
        },
        { passive: true, once: true }
    );
}

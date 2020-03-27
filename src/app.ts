import { bindFunctions } from './js/bindFunctions';
import { initProfile } from './js/initProfile';
import { initPages } from './js/initPages';
import { displayQuestions, startQuiz } from './js/handleQuestions';
import { setPageTitle } from './js/renamePage';

window.addEventListener(
    'DOMContentLoaded',
    async () => {
        bindFunctions();

        // Load page title
        const text = localStorage.getItem('title');
        if (text) setPageTitle(text);

        // Enable pages
        initPages({
            quiz: [startQuiz],
            profile: [initProfile],
            questions: [displayQuestions],
        });
    },
    { once: true }
);

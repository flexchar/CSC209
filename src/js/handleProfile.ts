export function handleProfile(event) {
    event.preventDefault();

    if (!confirm(`Shall I remember you?`)) return;

    const form = event.target as HTMLFormElement;
    const data = {};

    for (let el of form.elements) {
        const { name = null, value = null } = el;
        if (el.type === 'checkbox') {
            data[name] = el.checked;
            continue;
        }
        if (el.type === 'radio') {
            if (el.checked) {
                // console.log(el);
                // debugger;
                data[name] = el.value;
            }
            continue;
        }
        if (name) data[name] = value;
    }

    localStorage.setItem('profile', JSON.stringify(data));
}

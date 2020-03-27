import { handleProfile } from './handleProfile';
import { renamePage } from './renamePage';

export function bindFunctions() {
    document
        .querySelector('[data-js-alert]')
        .addEventListener('click', e => alert(e.target.dataset.jsAlert), {
            passive: true,
        });
    document
        .querySelector('[data-profile-form]')
        .addEventListener('submit', handleProfile);
    document
        .querySelector('[data-rename]')
        .addEventListener('click', renamePage);
}

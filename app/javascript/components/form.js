const doseButton = () => {
  let clickState = 0;
  const btn = document.querySelector('.show-dose');

  if (btn !== null) {
    btn.addEventListener('click', (e) => {
      const form = document.querySelector('.dose-form');
      if (clickState === 0) {
        form.classList.remove('dose-hidden');
        btn.innerText = 'Hide form';
        clickState = 1;
      } else {
        form.classList.add('dose-hidden');
        btn.innerText = 'Add a new ingredient';
        clickState = 0;
      }
    });
  }
};

const reviewButton = () => {
  let clickState = 0;
  const btn = document.querySelector('.show-review');

  if (btn !== null) {
    btn.addEventListener('click', (e) => {
      const form = document.querySelector('.review-form');
      if (clickState === 0) {
        form.classList.remove('review-hidden');
        btn.innerText = 'Hide form';
        clickState = 1;
      } else {
        form.classList.add('review-hidden');
        btn.innerText = 'Add a new review';
        clickState = 0;
      }
    });
  }
};

export { doseButton, reviewButton };

const hideAfterTime = (seconds) => {
  const alert = document.querySelector('.alert');

  if (alert !== null) {
    setTimeout(() => {
      alert.style.display = 'none';
      alert.style.transition = `linear ${seconds}s`
    }, seconds * 1000);
  }
};

export { hideAfterTime };

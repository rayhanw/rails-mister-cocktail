const hideAfterTime = (milliseconds) => {
  const alert = document.querySelector('.alert');

  setTimeout(() => {
    alert.style.display = 'none';
    alert.style.transition = 'linear .3s';
  }, milliseconds * 1000);
};

export { hideAfterTime };

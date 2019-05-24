import anime from 'animejs';


const ratingStars = () => {
  const stars = document.querySelectorAll('.rating');

  // console.log(stars);
  stars.forEach((star) => {
    console.log(star);
    anime({
      targets: star,
      rotate: {
        value: 360,
        duration: 1200,
        easing: 'linear'
      },
    });
  });
};

export { ratingStars };

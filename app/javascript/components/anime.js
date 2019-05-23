import anime from 'animejs';


const imgAnime = () => {
  anime({
    targets: '.rounded',
    keyframes: [
        {translateY: -40},
        {translateY: 0},
      ],
      duration: 2000,
      easing: 'easeOutElastic(1, .8)',
      loop: false
  });
};

export { imgAnime };

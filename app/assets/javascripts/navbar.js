document.addEventListener('DOMContentLoaded', function() {
  const navbarLinks = document.querySelectorAll('.navbar-link');
  
  // Handle click events for active states
  navbarLinks.forEach(link => {
    link.addEventListener('click', function(e) {
      // Remove active class from all links
      navbarLinks.forEach(navLink => {
        navLink.classList.remove('active');
      });
      
      // Add active class to clicked link
      this.classList.add('active');
    });
  });
  
  // Optional: Handle scroll-based active states for single page
  function handleScrollActiveStates() {
    const sections = document.querySelectorAll('section[id], div[id]');
    const scrollPosition = window.scrollY + 100;
    
    let currentSection = 'home';
    
    sections.forEach(section => {
      const sectionTop = section.offsetTop;
      const sectionHeight = section.offsetHeight;
      
      if (scrollPosition >= sectionTop && scrollPosition < sectionTop + sectionHeight) {
        currentSection = section.id;
      }
    });
    
    // Update active states based on scroll
    navbarLinks.forEach(link => {
      const href = link.getAttribute('href');
      link.classList.remove('active');
      
      if ((currentSection === 'home' && href === '/') || 
          href === `#${currentSection}`) {
        link.classList.add('active');
      }
    });
  }
  
  // Enable scroll-based active states
  window.addEventListener('scroll', handleScrollActiveStates);
  
  // Initial call
  handleScrollActiveStates();
});
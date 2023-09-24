// Create the logo element
const totalDivFooter = document.createElement('div');
totalDivFooter.classList.add('total-div-for-footer')

const logoDiv = document.createElement('div');
logoDiv.classList.add('logo');

const logoImg = document.createElement('img');
logoImg.src = 'https://iili.io/Hg4SOmB.png';
logoImg.classList.add('footer-logo');
logoImg.alt = 'logo';

logoDiv.appendChild(logoImg);

// Create the address, open hours, and contact element
const addressOpenHoursContactDiv = document.createElement('div');
addressOpenHoursContactDiv.classList.add('address-open-hours-contact');

// Address
const addressDiv = document.createElement('div');
addressDiv.classList.add('address');

const addressTitle = document.createElement('h3');
addressTitle.textContent = 'Location';

const addressText = document.createElement('p');
addressText.textContent = '11113 W Baldwin RD, Monrovia, MD 21770, United States of America.';

addressDiv.appendChild(addressTitle);
addressDiv.appendChild(addressText);

// Open Hours
const openHoursDiv = document.createElement('div');
openHoursDiv.classList.add('open-hours');

const openHoursTitle = document.createElement('h3');
openHoursTitle.textContent = 'Open Hours';

const openHoursText = document.createElement('p');
openHoursText.innerHTML = 'Weekdays: 09.30 am - 06:00 pm.<br>Weekends and Holidays: 09.30 am - 06.30 pm.';

openHoursDiv.appendChild(openHoursTitle);
openHoursDiv.appendChild(openHoursText);

// Contact
const contactDiv = document.createElement('div');
contactDiv.classList.add('contact-for-more');

const contactTitle = document.createElement('h3');
contactTitle.textContent = 'Contact';

const contactPhoneLink = document.createElement('a');
contactPhoneLink.href = 'tel:+18608171080';

const contactPhone = document.createElement('p');
contactPhone.textContent = '+1 860 817 1080';

contactPhoneLink.appendChild(contactPhone);

const contactEmailLink = document.createElement('a');
contactEmailLink.href = 'mailto:info@globalfuncity.in';

const contactEmail = document.createElement('p');
contactEmail.textContent = 'info@globalfuncity.in';

contactEmailLink.appendChild(contactEmail);

contactDiv.appendChild(contactTitle);
contactDiv.appendChild(contactPhoneLink);
contactDiv.appendChild(contactEmailLink);

addressOpenHoursContactDiv.appendChild(addressDiv);
addressOpenHoursContactDiv.appendChild(openHoursDiv);
addressOpenHoursContactDiv.appendChild(contactDiv);

// Create the footer navigation element
const navbarFooterDiv = document.createElement('div');
navbarFooterDiv.classList.add('navbar-footer');

const navbarList = document.createElement('ul');

// Create and append list items
const navLinks = [
  { text: 'ABOUT US', href: '/globalfuncityweb/about' },
  { text: 'EVENTS', href: '/globalfuncityweb/events' },
  { text: 'OFFERS', href: '/globalfuncityweb/offers' },
  { text: 'TICKET PRICES', href: '/globalfuncityweb/ticketprices' },
  { text: 'SHOP', href: '../../pages/shop/shop.html' },
  { text: 'ATTRACTIONS', href: '/globalfuncityweb/attractions' },
  { text: 'CONTACT', href: '/globalfuncityweb/contact' },
];

navLinks.forEach(navLink => {
  const listItem = document.createElement('li');
  const link = document.createElement('a');
  link.classList.add('navigation__link');
  link.href = navLink.href;
  link.textContent = navLink.text;
  listItem.appendChild(link);
  navbarList.appendChild(listItem);
});

navbarFooterDiv.appendChild(navbarList);

// Create the other footer navigation element
const otherNavbarFooterDiv = document.createElement('div');
otherNavbarFooterDiv.classList.add('other-navbar-footer');

const otherNavbarList = document.createElement('ul');

// Create and append list items
const otherNavLinks = [
  { text: 'PRIVACY POLICY', href: '/globalfuncityweb/privacy-policy' },
  { text: 'SAFETY AND HYGIENE', href: '../../pages/footer other pages/safetyofvisitors.html' },
  { text: 'RULES & REGULATIONS', href: '../../pages/footer other pages/rulesandregulations.html' },
  { text: 'GREEN INITIATIVES', href: '../../pages/footer other pages/greeninitiatives.html' },
  { text: 'CSR INITIATIVES', href: '../../pages/footer other pages/csrinitiatives.html' },
];

otherNavLinks.forEach(otherNavLink => {
  const listItem = document.createElement('li');
  const link = document.createElement('a');
  link.classList.add('other-navigation-link');
  link.href = otherNavLink.href;
  link.textContent = otherNavLink.text;
  listItem.appendChild(link);
  otherNavbarList.appendChild(listItem);
});

otherNavbarFooterDiv.appendChild(otherNavbarList);

// Create the social media icons element
const socialMediasDiv = document.createElement('div');
socialMediasDiv.classList.add('social-medias');

// Create and append social media icons
const socialMediaIcons = [
    { className: 'facebook', iconClass: 'fab fa-facebook-f' },
    { className: 'twitter', iconClass: 'fab fa-twitter' },
    { className: 'pinterest', iconClass: 'fab fa-pinterest' },
    { className: 'instagram', iconClass: 'fab fa-instagram' },
    { className: 'youtube', iconClass: 'fab fa-youtube' },
  ];
  
  for (let i = 0; i < socialMediaIcons.length; i++) {
    const iconDiv = document.createElement('div');
    iconDiv.className = socialMediaIcons[i].className;
    const link = document.createElement('a');
    link.href = '#';
    const icon = document.createElement('i');
    icon.className = socialMediaIcons[i].iconClass;
    link.appendChild(icon);
    iconDiv.appendChild(link);
    socialMediasDiv.appendChild(iconDiv);
  }

// Create the horizontal rule element
const hrElement = document.createElement('hr');
hrElement.className = "hr_gfc";
hrElement.style = "width:99.9%";

// Create the copyright element
const copyrightDiv = document.createElement('div');
copyrightDiv.classList.add('copyright');

const copyrightText = document.createElement('p');
copyrightText.innerHTML = 'Global Fun City &#169; 2023. All rights Reserved.<br>Site designed by Vignesh.in';

copyrightDiv.appendChild(copyrightText);

// Append all elements to the document body
totalDivFooter.appendChild(logoDiv);
totalDivFooter.appendChild(addressOpenHoursContactDiv);
totalDivFooter.appendChild(navbarFooterDiv);
totalDivFooter.appendChild(otherNavbarFooterDiv);
totalDivFooter.appendChild(socialMediasDiv);
totalDivFooter.appendChild(hrElement);
totalDivFooter.appendChild(copyrightDiv);

document.querySelector('.footer_for_gfc').append(totalDivFooter);
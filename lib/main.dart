import 'package:flutter/material.dart';
import 'my_home_screen.dart';

// Dart representation of the HTML structure
class Website {
  final Head head;
  final Body body;

  Website({required this.head, required this.body});
}

class Head {
  final List<Meta> metaTags;
  final List<Script> scriptTags;
  final String title;
  final List<Link> linkTags;
  final List<Style> styleTags;

  Head({
    required this.metaTags,
    required this.scriptTags,
    required this.title,
    required this.linkTags,
    required this.styleTags,
  });
}

class Meta {
  final String name;
  final String content;
  final String? httpEquiv;

  Meta({required this.name, required this.content, this.httpEquiv});
}


class Script {
  final String src;
  final String? id;
  final String? crossorigin;
  final bool async;

  Script({required this.src, this.id, this.crossorigin, required this.async});
}

class Link {
  final String rel;
  final String href;
  final String? id;
  final String type;
  final String? media;

  Link({required this.rel, required this.href, this.id, required this.type, this.media});
}

class Style {
   final String id;
   final String type;
   final String css;

   Style({required this.id, required this.type, required this.css});
}

class Body {
  final Div featDiv;
  final Header header;
  final Div gamesWrapDiv;
  final Footer footer;
  final List<Script> bodyScripts;
  final String comment;

  Body({required this.featDiv, required this.header, required this.gamesWrapDiv, required this.footer, required this.bodyScripts, required this.comment});
}

class Div {
  final String? id;
  final String? className;
  final List<Article> articles;

  Div({this.id, this.className, required this.articles});
}

class Article {
  final String? className;
  final A aTag;

  Article({this.className, required this.aTag});
}

class A {
  final String href;
  final String? title;
  final DivThumb thumbDiv;

  A({required this.href, this.title, required this.thumbDiv});
}

class DivThumb {
  final DivPlay playDiv;
  final Image imageTag;

  DivThumb({required this.playDiv, required this.imageTag});
}

class DivPlay {
  final Span spanTag;
  DivPlay({required this.spanTag});
}

class Span {
  final String? className;
  Span({this.className});
}

class Image {
  final String src;
  final String? width;
  final String? height;
  final String? alt;

  Image({required this.src, this.width, this.height, this.alt});
}

class Header {
  final DivHeaderWrap headerWrapDiv;

  Header({required this.headerWrapDiv});
}

class DivHeaderWrap {
  final DivLogo logoDiv;
  final DivBtns btnsDiv;
  final DivMenu menuDiv;
  final DivSearch headerSearchDiv;
  final DivSocial socialDiv;

  DivHeaderWrap({required this.logoDiv, required this.btnsDiv, required this.menuDiv, required this.headerSearchDiv, required this.socialDiv});
}

class DivLogo {
  final A logoA;

  DivLogo({required this.logoA});
}

class DivBtns {
  final List<Li> liTags;
  DivBtns({required this.liTags});
}

class Li {
  final A aTag;
  final String? className;
  final String? text;
  Li({required this.aTag, this.className, this.text});
}

class DivMenu {
  final A btnA;
  final Ul actionsUl;

  DivMenu({required this.btnA, required this.actionsUl});
}

class Ul {
  final String? className;
  final List<Li> liTags;

  Ul({this.className, required this.liTags});
}

class DivSearch {
  final Form searchForm;
  DivSearch({required this.searchForm});
}

class Form{
  final String? method;
  final String? id;
  final String? action;
  final Input submitInput;
  final Input textInput;

  Form({required this.method, required this.id, required this.action, required this.submitInput, required this.textInput});
}

class Input {
   final String? type;
   final String? className;
   final String? value;
   final String? placeholder;
   final String? name;
   final String? id;

   Input({required this.type, this.className, this.value, this.placeholder, this.name, this.id});
}

class DivSocial {
  final Ul ulTag;
  DivSocial({required this.ulTag});
}

class Section {
  final String? id;
  final List<Article> articles;

  Section({this.id, required this.articles});
}

class Footer {
  final String copyRight;
  final FooterContainer footerContainer;

  Footer({required this.copyRight, required this.footerContainer});
}

class FooterContainer{
  final DivFooterMenu menuFooterDiv;
  final DivPowered poweredDiv;

  FooterContainer({required this.menuFooterDiv, required this.poweredDiv});
}

class DivFooterMenu {
    final Ul menuUl;

    DivFooterMenu({required this.menuUl});
}

class DivPowered {
   final String poweredText;
   final A aTag;

   DivPowered({required this.poweredText, required this.aTag});
}

// Actual Dart data structure

final website = Website(
  head: Head(
    metaTags: [
       Meta(name: 'google-site-verification', content: 'AIjphd5tT5UoXza9oBHafG5OFjbRpcyPZre6kRVnpNo'),
        Meta(name: 'httpEquiv', content: 'text/html;charset=UTF-8'),
    ],
    scriptTags: [
      Script(async: true, src: 'https://www.googletagmanager.com/gtag/js?id=G-2P8VQ4CHJW', crossorigin: null, id: null),
      Script(async: true, src: 'https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-3292366693031432', crossorigin: "anonymous", id: null),
      Script(src: "wp-includes/js/wp-emoji-release.min.js?ver=6.6.1", crossorigin: null, id: null, async: false),
    ],
    title: 'Games &#8211; Browse all games',
    linkTags: [
      Link(rel: 'dns-prefetch', href: 'http://fonts.googleapis.com/', type: '', id: null, media: null),
      Link(rel: 'alternate', type: 'application/rss+xml', href: 'feed/index.html', id: null, media: null),
      Link(rel: 'alternate', type: 'application/rss+xml', href: 'comments/feed/index.html', id: null, media: null),
       Link(rel: 'stylesheet', id: 'wp-block-library-css', href: 'wp-includes/css/dist/block-library/style.minb6a4.css?ver=6.6.1', type: 'text/css', media: 'all'),
       Link(rel: 'stylesheet', id: 'myfriv-style-css', href: 'wp-content/themes/myfriv/styleb6a4.css?ver=6.6.1', type: 'text/css', media: 'all'),
      Link(rel: 'stylesheet', id: 'myfriv-skeleton-css', href: 'wp-content/themes/myfriv/css/skeletonb6a4.css?ver=6.6.1', type: 'text/css', media: 'all'),
       Link(rel: 'stylesheet', id: 'myfriv-google_fonts-css', href: 'http://fonts.googleapis.com/css?family=Open+Sans%3A400italic%2C400%2C300%2C700&amp;ver=6.6.1', type: 'text/css', media: 'all'),
       Link(rel: 'stylesheet', id: 'myfriv-tooltip-css', href: 'wp-content/themes/myfriv/css/jquery.qtipb6a4.css?ver=6.6.1', type: 'text/css', media: 'all'),
    ],
    styleTags: [
      Style(id: 'wp-emoji-styles-inline-css', type: 'text/css', css: '\n\timg.wp-smiley, img.emoji {\n\t\tdisplay: inline !important;\n\t\tborder: none !important;\n\t\tbox-shadow: none !important;\n\t\theight: 1em !important;\n\t\twidth: 1em !important;\n\t\tmargin: 0 0.07em !important;\n\t\tvertical-align: -0.1em !important;\n\t\tbackground: none !important;\n\t\tpadding: 0 !important;\n\t}\n'),
      Style(id: 'classic-theme-styles-inline-css', type: 'text/css', css: '/*! This file is auto-generated */\n.wp-block-button__link{color:#fff;background-color:#32373c;border-radius:9999px;box-shadow:none;text-decoration:none;padding:calc(.667em + 2px) calc(1.333em + 2px);font-size:1.125em}.wp-block-file__button{background:#32373c;color:#fff;text-decoration:none}\n'),
       Style(id: 'global-styles-inline-css', type: 'text/css', css: ':root{--wp--preset--aspect-ratio--square: 1;--wp--preset--aspect-ratio--4-3: 4/3;--wp--preset--aspect-ratio--3-4: 3/4;--wp--preset--aspect-ratio--3-2: 3/2;--wp--preset--aspect-ratio--2-3: 2/3;--wp--preset--aspect-ratio--16-9: 16/9;--wp--preset--aspect-ratio--9-16: 9/16;--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;--wp--preset--shadow--natural: 6px 6px 9px rgba(0, 0, 0, 0.2);--wp--preset--shadow--deep: 12px 12px 50px rgba(0, 0, 0, 0.4);--wp--preset--shadow--sharp: 6px 6px 0px rgba(0, 0, 0, 0.2);--wp--preset--shadow--outlined: 6px 6px 0px -3px rgba(255, 255, 255, 1), 6px 6px rgba(0, 0, 0, 1);--wp--preset--shadow--crisp: 6px 6px 0px rgba(0, 0, 0, 1);}:where(.is-layout-flex){gap: 0.5em;}:where(.is-layout-grid){gap: 0.5em;}body .is-layout-flex{display: flex;}.is-layout-flex{flex-wrap: wrap;align-items: center;}.is-layout-flex > :is(*, div){margin: 0;}body .is-layout-grid{display: grid;}.is-layout-grid > :is(*, div){margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}:where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}
:where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}
:where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}
:root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}'),
        Style(id: 'main-style', type: 'text/css', css: '\n    a, a:active, a:visited { color: ; }\n  a:hover { color: ; }\n  #header, .comments .submit, .description .thumb, .title-special, .games, .single-page .related h3, .single-page .game-space h1 { background-color: ; }\n  #header, .title-special, .comments .submit, .description .thumb { border-color: ; }\n  .games:hover, .menu a.btn:hover, .social ul li a:hover, .featbtn ul li a, .btns ul li:hover, .games .play { background-color: ; }\n  .featbtn ul li a { border-color: ; }\n  .menu span, .menu ul.actions a, .menu span.icon:before, .description .tags span { color: ; }\n  .qtip-default { background-color: ; }\n  .qtip-default:after { border-right-color: ; }\n  h1, h2, .description .tags ul li a, .single-page .footer .description, .single-page .footer .description h4, .single-page .game-space .preloader, .header-search input, nav#menu ul li, nav#menu ul li ul li, .social ul a, .featbtn ul a, #footer, #footer a, .single-page .related h3, .single-page .adver h3, .single-page .game-space h2, body { color: ; }\n  .single-page .game-space a.skip { background: ; }\n    .single-page .footer .description { background-color: ; }\n'),

    ],
  ),
  body: Body(
    featDiv: Div(
      id: 'feat',
        className: 'container container-flex',
          articles: [
            Article(className: 'games', aTag: A(href: 'baking-cooking-fun/index.html', title: 'Baking Cooking Fun', thumbDiv:  DivThumb(playDiv: DivPlay(spanTag: Span(className: 'icon icon-link')), imageTag: Image(src: 'wp-content/uploads/thumbs/iframe/B/baking-cooking-fun-1-150x135.jpg', width: '100', height: '100', alt: 'Baking Cooking Fun')))),
            Article(className: 'games', aTag: A(href: 'puzzle-box-brain-test/index.html', title: 'Puzzle Box &#8211; Brain Test', thumbDiv:  DivThumb(playDiv: DivPlay(spanTag: Span(className: 'icon icon-link')), imageTag: Image(src: 'wp-content/uploads/thumbs/iframe/P/puzzle-box-brain-test-1-150x135.jpg', width: '100', height: '100', alt: 'Puzzle Box &#8211; Brain Test')))),
            Article(className: 'games', aTag: A(href: 'catch-bombs/index.html', title: 'Catch Bombs', thumbDiv:  DivThumb(playDiv: DivPlay(spanTag: Span(className: 'icon icon-link')), imageTag: Image(src: 'wp-content/uploads/thumbs/gamepix/C/catch-bombs.png', width: '100', height: '100', alt: 'Catch Bombs')))),
            Article(className: 'games', aTag: A(href: 'catball/index.html', title: 'CatBall', thumbDiv:  DivThumb(playDiv: DivPlay(spanTag: Span(className: 'icon icon-link')), imageTag: Image(src: 'wp-content/uploads/thumbs/gamepix/C/catball.png', width: '100', height: '100', alt: 'CatBall')))),
            Article(className: 'games', aTag: A(href: 'crowd-defense/index.html', title: 'Crowd Defense', thumbDiv:  DivThumb(playDiv: DivPlay(spanTag: Span(className: 'icon icon-link')), imageTag: Image(src: 'wp-content/uploads/thumbs/iframe/C/crowd-defense-150x150.jpg', width: '100', height: '100', alt: 'Crowd Defense')))),
            Article(className: 'games', aTag: A(href: 'lol-beauty-salon/index.html', title: 'Lol Beauty Salon', thumbDiv:  DivThumb(playDiv: DivPlay(spanTag: Span(className: 'icon icon-link')), imageTag: Image(src: 'wp-content/uploads/thumbs/iframe/L/lol-beauty-salon-1-150x135.jpg', width: '100', height: '100', alt: 'Lol Beauty Salon')))),
            Article(className: 'games', aTag: A(href: 'cat-lovescapes/index.html', title: 'Cat Lovescapes', thumbDiv:  DivThumb(playDiv: DivPlay(spanTag: Span(className: 'icon icon-link')), imageTag: Image(src: 'wp-content/uploads/thumbs/gamepix/C/cat-lovescapes.png', width: '100', height: '100', alt: 'Cat Lovescapes')))),
           Article(className: 'games', aTag: A(href: 'asmr-antistress-relaxation-toys/index.html', title: 'Asmr Antistress Relaxation Toys', thumbDiv:  DivThumb(playDiv: DivPlay(spanTag: Span(className: 'icon icon-link')), imageTag: Image(src: 'wp-content/uploads/thumbs/iframe/A/asmr-antistress-relaxation-toys-150x150.jpg', width: '100', height: '100', alt: 'Asmr Antistress Relaxation Toys')))),
          ],
      ),
        header: Header(
          headerWrapDiv: DivHeaderWrap(
            logoDiv: DivLogo(
                logoA: A(href: 'index.html', title: 'Games', thumbDiv: DivThumb(playDiv: DivPlay(spanTag: Span()), imageTag: Image(src: 'wp-content/themes/myfriv/images/logo.png', width: '', height: '', alt: ''))),
            ),
            btnsDiv: DivBtns(liTags: [
              Li(aTag: A(href: 'index.html', title: 'Home', thumbDiv: DivThumb(playDiv: DivPlay(spanTag: Span(className: 'icon icon-home')), imageTag: Image(src: '', width: '', height: '', alt: '')))),
               Li(aTag: A(href: '#', title: 'Most Played', thumbDiv: DivThumb(playDiv: DivPlay(spanTag: Span(className: 'icon icon-star')), imageTag: Image(src: '', width: '', height: '', alt: ''))), className: 'btn-slide'),
                Li(aTag: A(href: '', title: '', thumbDiv:  DivThumb(playDiv: DivPlay(spanTag: Span()), imageTag: Image(src: '', width: '', height: '', alt: ''))), className: 'empty', text: '|'),
                Li(aTag: A(href: 'wp-login.html', title: 'Login', thumbDiv: DivThumb(playDiv: DivPlay(spanTag: Span(className: 'icon icon-user')), imageTag: Image(src: '', width: '', height: '', alt: ''))))
              ],
            ),
             menuDiv: DivMenu(
              btnA: A(href: '#', title: null, thumbDiv:  DivThumb(playDiv: DivPlay(spanTag: Span(className: 'icon icon-angle-down')), imageTag: Image(src: '', width: '', height: '', alt: ''))),
               actionsUl: Ul(className: 'actions', liTags: [
                  Li(aTag: A(href: 'category/action/index.html', title: null, thumbDiv:  DivThumb(playDiv: DivPlay(spanTag
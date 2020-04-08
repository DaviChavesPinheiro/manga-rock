import 'package:manga_rock/models/manga_profile.dart';

const List<MangaProfile> MANGAS = const [
  // MangaProfile(
  //   title: "Naruto Shippuden",
  //   description:
  //       "Naruto Uzumaki (Junko Takeuchi / Maile Flanagan) não é como os outros garotos de sua idade. Hiperativo e sonhador, este adolescente está sempre em busca de aprovação dos outros, e nada lhe trará mais reconhecimento do que se tornar um Hokage, o ninja mais poderoso da aldeia.",
  //   autor: "Kouhei Horikosh",
  //   thumbnailUrl:
  //       'https://br.web.img3.acsta.net/pictures/15/05/28/17/20/502228.jpg',
  //   bannerUrl:
  //       'https://br.web.img3.acsta.net/pictures/15/05/28/17/20/502228.jpg',
  //   capitulo1: ["https://1.bp.blogspot.com/-To6YMks8jtY/XeLh3pPkyDI…fkBzmmacny0U8iItw7kkFQKwCLcBGAsYHQ/s1600/001.webp", "https://1.bp.blogspot.com/-HddvXrrs_hc/XeLh3jQtx8I…6Eyp6EvxpJu5jUhL8YOGQu3wCLcBGAsYHQ/s1600/002.webp", "https://1.bp.blogspot.com/-JJ_sFV8Jrjo/XeLh3o1ZqSI…lYwOyv9ItVzsermoONpuhTrgCLcBGAsYHQ/s1600/003.webp", "https://1.bp.blogspot.com/-AoYqG73ev1U/XeLh4J0QsfI…FcmXO8wD9r9obGcfWdEQ3n0ACLcBGAsYHQ/s1600/004.webp", "https://1.bp.blogspot.com/-mf4zulzGkJo/XeLh4j2Lz-I…HsV_6WlJ_GyScqH3u2tGzAWQCLcBGAsYHQ/s1600/005.webp", "https://1.bp.blogspot.com/-ykVlzGKYUmI/XeLh4n2G8ZI…FctudOsI0BuqTDW4H9bBfTOwCLcBGAsYHQ/s1600/006.webp", "https://1.bp.blogspot.com/-YBBx3wGDASg/XeLh5FLSnHI…YkicpU-daMgK8Je_hJKgUJFQCLcBGAsYHQ/s1600/007.webp", "https://1.bp.blogspot.com/-VGyFug4ihSQ/XeLh5EbAm0I…gkjzRIwWIjRPMcC49f_gVJCACLcBGAsYHQ/s1600/008.webp", "https://1.bp.blogspot.com/-zNr8CCFBdw4/XeLh5YABJII…SEmktUbO3aR34xLPTln_bSHACLcBGAsYHQ/s1600/009.webp", "https://1.bp.blogspot.com/-h5mIcKEyihA/XeLh5lSKDmI…ZEnp7brnf_ZWBPn73cQV43AACLcBGAsYHQ/s1600/010.webp", "https://1.bp.blogspot.com/-6juaG0HUzaQ/XeLh5wJUdyI…zIQnWCbB65CgJpQvBeXPzjbQCLcBGAsYHQ/s1600/011.webp", "https://1.bp.blogspot.com/-cYlPnY9GD-Y/XeLh6Dqx0KI…T4wjaCEdd-cL630w8-TTRhywCLcBGAsYHQ/s1600/012.webp", "https://1.bp.blogspot.com/-d9fVvolCFT8/XeLh6eqIchI…zo9gs1q7j7eb9eMhs5nYzvDACLcBGAsYHQ/s1600/013.webp", "https://1.bp.blogspot.com/-pmy1wGmeFg4/XeLh6S78N4I…CAvb7MRm7fH57NnTx5e52zagCLcBGAsYHQ/s1600/014.webp", "https://1.bp.blogspot.com/-rhLPwhrGEMs/XeLh6_0tKMI…gkSxgg1F6rFlTgXdc2XpV3fgCLcBGAsYHQ/s1600/015.webp", "https://1.bp.blogspot.com/-mLTfPo4GKWM/XeLh7dMOaNI…rsaLR7QUwY3SGOXTYHEKRonwCLcBGAsYHQ/s1600/016.webp", "https://1.bp.blogspot.com/-ixA5LqG49jk/XeLh7lTranI…iMBqCPsAvsNgo8-0cT1n2UzwCLcBGAsYHQ/s1600/017.webp", "https://1.bp.blogspot.com/-QvXJwkRlaTE/XeLh786lCXI…5whgD-YRXxTL76Ba4E3VMbNQCLcBGAsYHQ/s1600/018.webp", "https://1.bp.blogspot.com/-8kBtUtyH050/XeLh71czxuI…C0ZfYkryjVpmeKDNtbCEKleACLcBGAsYHQ/s1600/019.webp", "https://1.bp.blogspot.com/-0JbSEls9AsU/XeLh8bK3JlI…kU0nWvmjbXr1QDiD_PGg0wIACLcBGAsYHQ/s1600/020.webp", "https://1.bp.blogspot.com/-hE3u-zxv69o/XeLh8tKlDDI…KwTp93oTdgaVhxcAmW7wx09ACLcBGAsYHQ/s1600/021.webp", "https://1.bp.blogspot.com/-6DrxC4w03FA/XeLh8_eJQ6I…yAwnhdVuWPU5YZOeRLfAAwEwCLcBGAsYHQ/s1600/022.webp", "https://1.bp.blogspot.com/-ruM2bSb_z0M/XeLh9L6AvrI…5wgEVpI0LoXIKORnxr9Y84-QCLcBGAsYHQ/s1600/023.webp", "https://1.bp.blogspot.com/-ekMHCyycUEw/XeLh9UH6OfI…YgvUyh1N0vgDkxhEOQZ4dJgQCLcBGAsYHQ/s1600/024.webp", "https://1.bp.blogspot.com/-y2JB_ptVWsg/XeLh9v59hoI…T8_KisrBaZ9nKH_B7UIMdwTACLcBGAsYHQ/s1600/025.webp", "https://1.bp.blogspot.com/-yomGhd9BDKg/XeLh9jzcxeI…owGiKJ0zyZ-KzJwRnCor_P0QCLcBGAsYHQ/s1600/026.webp", "https://1.bp.blogspot.com/-ZCu6j5ir2hE/XeLh-EsUBdI…IAYhtkY0z5Kw03piQXhv9RLwCLcBGAsYHQ/s1600/027.webp", "https://1.bp.blogspot.com/-LaQMAgqYzU0/XeLh-eDKhUI…WcdZYYXQS-A6VrnsBbm0ehzwCLcBGAsYHQ/s1600/028.webp", "https://1.bp.blogspot.com/-dLi0HAkcpFs/XeLh-r1ANnI…5ARzz3uWspT-mxVkG2HOpvdwCLcBGAsYHQ/s1600/029.webp", "https://1.bp.blogspot.com/-lXw46rtJMuU/XeLh-zL9R-I…NQBS5IrtVIHM52KKBSAZiyLQCLcBGAsYHQ/s1600/030.webp", "https://1.bp.blogspot.com/-QMvDPWVULJc/XeLh_JNBvKI…H4LqPxPZ9rDdWw3CedghghHACLcBGAsYHQ/s1600/031.webp", "https://1.bp.blogspot.com/-S_ISslh-Pc8/XeLh_XriixI…4Q4C9TWjTbDdw81ODk5RHh4wCLcBGAsYHQ/s1600/032.webp", "https://1.bp.blogspot.com/-2jmhiNRJY6M/XeLh_amIbSI…pMAZoq0WO5vk_Y_anfO9OIyACLcBGAsYHQ/s1600/033.webp", "https://1.bp.blogspot.com/-4i5AEhmBmH8/XeLh_mRKBlI…GsCV59qjm1KJcYWv3hHb5V9wCLcBGAsYHQ/s1600/034.webp", "https://1.bp.blogspot.com/-QRxk1mxgLZM/XeLh_yD6_8I…wghFN737oWMcTaiS_K6b0IBACLcBGAsYHQ/s1600/035.webp", "https://1.bp.blogspot.com/-Y4IHVm72BVY/XeLiAIw3mFI…FEU-_TU58_yw1K2pmS3iec_ACLcBGAsYHQ/s1600/036.webp", "https://1.bp.blogspot.com/-Bt89XiZz8Yc/XeLiAQiRWJI…gwHYLOfHP1h6QbNUkOqIyABQCLcBGAsYHQ/s1600/037.webp", "https://1.bp.blogspot.com/-AsLFKA4wRpk/XeLiAwwJtEI…qgAAQZQEky8TUiL3hyhAr8ZgCLcBGAsYHQ/s1600/038.webp", "https://1.bp.blogspot.com/-Pj2eEqgqzoQ/XeLiBAo4sNI…O8Yz4qryjVSDSrWYiXSklDnQCLcBGAsYHQ/s1600/039.webp", "https://1.bp.blogspot.com/-quvr3e4Tukw/XeLiBAhM1tI…xoIj-1D4WeTj5La4G52iOLswCLcBGAsYHQ/s1600/040.webp", "https://1.bp.blogspot.com/-vugKK2f6Yac/XeLiBdq3nSI…fcKCoKnhVQRgPq2NhGJmawcQCLcBGAsYHQ/s1600/041.webp", "https://1.bp.blogspot.com/-XLhOdRXuXK0/XeLiBlrPZeI…eEHTVVtk7826Cu4hW3-bi3dQCLcBGAsYHQ/s1600/042.webp", "https://1.bp.blogspot.com/-jt667NznClU/XeLiByfnoTI…J4mpnGhMzWu-CgbODORHS5UwCLcBGAsYHQ/s1600/043.webp", "https://1.bp.blogspot.com/-HE5ovUsGNiw/XeLiCHI15pI…EQ65i5x6-rGnIQWs0lGn4jhgCLcBGAsYHQ/s1600/044.webp", "https://1.bp.blogspot.com/-f_Lizu-9hWA/XeLiCcm6dmI…Cw4vMTqMDrVD8OV8o5vKkFsQCLcBGAsYHQ/s1600/045.webp", "https://1.bp.blogspot.com/-XF9oVdfETls/XeLiClOwWNI…oAQNIbSIHHPNcpCRRqZTJKBQCLcBGAsYHQ/s1600/046.webp", "https://1.bp.blogspot.com/-TfwnF0-zpz0/XeLiCovy5uI…mod74UrCdrSU_zw2TgTUdGPgCLcBGAsYHQ/s1600/047.webp"],
  // ),
  // MangaProfile(
  //   title: "Boku No Hero Academia",
  //   description:
  //       "Deku e All Might são convidados para a principal exposição mundial de habilidades de Quirk e inovações tecnológicas de heróis: a I-Expo. Lá, Deku conhece Melissa, uma garota que é Quirkless assim como ele já foi. Tudo ia bem, quando o sistema de segurança do evento é hackeado por vilões e a sociedade, ameaçada.",
  //   autor: "Kouhei Horikosh",
  //   thumbnailUrl:
  //       'https://img.elo7.com.br/product/zoom/1E7C1E1/big-poster-anime-my-hero-academia-tamanho-90x-0-cm-lo003-decoracao-nerd.jpg',
  //   bannerUrl:
  //       'https://img.elo7.com.br/product/zoom/1E7C1E1/big-poster-anime-my-hero-academia-tamanho-90x-0-cm-lo003-decoracao-nerd.jpg',
  //   capitulo1: [
  //     "http://unionleitor.top/images/banner_scan.png",
  //     "http://unionleitor.top/images/banner_forum.png",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/000.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/001.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/002.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/003.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/004.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/005.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/006.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/007.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/008.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/009.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/010.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/011.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/012.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/013.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/014.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/015.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/016.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/017.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/018.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/019.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/020.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/021.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/022.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/023.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/024.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/025.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/026.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/027.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/028.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/029.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/030.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/031.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/032.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/033.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/034.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/035.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/036.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/037.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/038.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/039.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/040.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/041.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/042.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/043.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/044.jpg",
  //     "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/045.jpg"
  //   ],
  // ),
  MangaProfile(
    title: "Tokyo Ghoul",
    description:
        "Durante um encontro, o tímido Kaneki Ken é atacado pela menina com que saiu mas ele consegue fugir. Não demora muito tempo para Ken perceber que ele também se tornará uma carniçal, criatura que se alimenta de carne humana. Enquanto está aprendendo a viver com essa nova condição, ele começa a ser caçado pela divisão Ghoul da polícia.",
    autor: "Kouhei Horikosh",
    thumbnailUrl:
        'https://img.elo7.com.br/product/zoom/1F2E1D9/big-poster-anime-tokyo-ghoul-tamanho-90x-0-cm-lo11-tokyo-ghoul.jpg',
    bannerUrl:
        'https://images-na.ssl-images-amazon.com/images/I/81fCk8HEkKL.jpg',
    chapters: ["Chapter 1", "Chapter 2", "Chapter 3", "Chapter 4", "Chapter 5", "Chapter 6", "Chapter 7"],
  ),
];

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-11-2023 a las 01:51:02
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_tarea3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `nombre`, `comentario`, `fecha`) VALUES
(1, 'Juan', 'Buen servicio', '2023-11-15 15:56:45'),
(2, 'July', 'Mal servicio', '2023-11-15 16:02:18'),
(3, 'Carl', '5 estrellas', '2023-11-15 19:26:17'),
(4, 'Mary', '1 estrella', '2023-11-15 19:38:50'),
(5, 'Rosa', 'Excelente servicio', '2023-11-15 19:43:26'),
(6, 'Ana', '2 Estrellas', '2023-11-18 16:38:58'),
(7, 'Miguel', 'Volvere', '2023-11-19 00:37:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario`
--

CREATE TABLE `formulario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `formulario`
--

INSERT INTO `formulario` (`id`, `nombre`, `email`, `password`) VALUES
(1, 'Katty', 'kat.op@hotmail.com', '789'),
(2, 'dsd', 'ffgg@hotmail.com', 'dfsgfg'),
(3, 'Mario', 'ma-lop@hotmail.com', '45tg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `fecha_pedido` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `producto_id`, `cantidad`, `total`, `fecha_pedido`) VALUES
(1, 1, NULL, 871.49, '2023-11-19 00:36:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `imagen` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `imagen`) VALUES
(1, 'MICROONDAS 20 L BLANCO INNOVA', '20 litros, panel digital, cocción rápida, 700 watts de potencia, reloj, temporizador', 69.50, 0xffd8ffe000104a46494600010100000100010000fffe003b43524541544f523a2067642d6a7065672076312e3020287573696e6720494a47204a50454720763632292c207175616c697479203d2038300affdb00430006040506050406060506070706080a100a0a09090a140e0f0c1017141818171416161a1d251f1a1b231c1616202c20232627292a29191f2d302d283025282928ffdb0043010707070a080a130a0a13281a161a2828282828282828282828282828282828282828282828282828282828282828282828282828282828282828282828282828ffc000110800b400b403012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00faa68a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a29280168a4c8a09f6a005a290106973400514c69635fbcea3ea6a23796e1d53ce8f731c01bc649a00b145206cf6a5a0028a28a0028aced5353fb13468b1ac92c99214b6d181df3540eb572dd12d13eb216fe828037f3466b9e6d52e48cfda6d947fb3193fccd33fb4989f9eff1f44514ae3b1d2668cd7307508bf8afa53ff0303f9542fa8d883f3dcb1faca4d170b1d61751d580fa9a8dae615eb2a7fdf42b917d5f4a43f34919fa9cd42fe24d263e8d1ffdf228b858ec1b50b55fbd3c7f9d30ea56c3a396ff007549ae2a4f1969b10254fe4315526f1e598fb8ae68b858ef8ea717f0c73b7fc0298da991c2daca7ea547f5af369fc7cbcf97035529bc7572c7e4888a43b1ea4da9cc7a5aaaff00bd2ff80a85f53b91fc36e9f893fe15e49378c351724282335466f11ea929e19ff5a6163d8a5d52e875b88507b47fe26b1f51d76e9355d16da2bec7da6e24f3be55e63485dc81c71f304e6bca67d5b526fbceeb9f524564ea3acc9a74b06a5a85dac10db24b995f2426e0abdb27b8a3511eeb26aabd1af2523fdec5577d4ed4e7cc989ff79c9feb5f3adc7c4dd197ef6b7e67b450487ff65159775f14346238bad4a53fec5b81fcda8b0f43e8fb8d56c149cc89f9d707e3ed4bed33698da6cc51ada50dbe3e0ab1e87f4af1997e27696c4f976baac9f5d8b9fd4d755e11d6a1d7fc3f35dc104d088f518a22b2b8627e463d45160d0fa1fe1c78d63f105b0b3bed91ead08f980385987f7d7fa8f5aee41cd7ca56d3cd6b711dcda4ad0dc46db91d7a822bdefe1e78c61f12597953ed8b54846268b3c30fefafa83fa1e3de989a3b3a2901a2811e61f16a7bb8354d34da4857313eec7d4570725fdfaae65be48ffdf942ff00335dafc6ec84b7c1c1f25fa7e15f19f8da34ff00849ee86d18d917e6506684ae3d8fa365d6820ccbad5aafd675ff001aa13f8af4c8bfd76bf6c08f4947f8d7ccde5478fb83f2a5f2d3fb8bf953e50e63e8a9bc79e1f8cfcdae46df4901fe59acf9fe24f86d0e06a25cfb2c87f92d7830503a014b4728b98f6c9fe28f87d172b24ce7da17feb8aa12fc59d2bfe59daddbff00db2519fcdabcd7c3dac1d16eae67163697a6680c1b2e9372a82c096f6380467deb79fc73082c6dfc25e1f8831f94792cd8f403269d82e74527c5bb7c0f234cb8607a6e645cfe9559fe2cdce7f75a5a8f76987f415c9788bc5177aeda416d7169a75b450b974fb25b88cf7e091dbdab0a8b05cf419be2aeaedcc5656a83fda7635564f89de2160768b44f4fdd93fccd71145160b9d6cdf117c5120c7dba24ff007215159d71e2ff0011ce7326b3763d91b6ff002ac3a0d3b05cf74f821733ea5e15f10dc6a334b777115d4691c933162a0a312066a2f8adc7826fbbe5547fe458a97f67ff00f912bc4fff005f9173ff006cda99f164ff00c513743d4a7fe8d8aa3a8fa1e47a2dac3711ccd3c41cab0033dab48595a8fbb6f1fe5597a239f3da01776d69e60dcaf70ac54b7000c81c7d4f1ef5a72cf66ae547886362182968ec18ae3d412455dc92a6b71c71d9031471a1f300ca8c57a4fc201ff144dde3beb09ffa2cd798eb72c24a436d7ef7a149323f921101e31b7939ef5ea1f0787fc51371ff006175ff00d146a58d1d2a9e3dea6b3bdb8d3aea2bdb294c57109dc8c3f91f6aaebd29b2ff00ab6a92d9f5769f33cf636f2bf2f246ac71ea4514cd1ffe41367ff5c53f90a299079bfc6d198adffeb8bff315f1978d3fe468bc3fecc43ff1c15f66fc6cff005700ff00a62ffcc57c65e33ff91a2f3fdc8bff0045ad0b71bd8c6a28a2ac90a28a2800a28a2800a28a2800a28a2800a0d141a00f6ff807c7827c4bef7b10ff00c866a2f8b3ff00225dcfaee4ff00d189527c061ff143f893febfa2ff00d166a3f8b1ff002255c1ff006e3ffd18952f72ba1e43a469d26a97a20456d801676500ed1dba91df02aacf1bc133c528dae8769e6ace8e96afa8c5f6f1035b2e4bacce514f181c8e7a907f0a86d7c982fe0338125ac73a9936f219030cfe954497e5b0b44d192e37df1b96f9be683119f6ce73ebcf435ea1f073fe44a9f3ff004171ff00a28d796d94327f6c25d5ebaf92b27992ceeff2c880f207ae4718af54f83f86f05ccca30adab1201ec3cae2931a37173818a253fba6f5a6ab702899bf746a0b3eaed1ff00e41365ff005c53ff00411451a39ff894d97fd714ff00d04514c93cdbe36ffaa87feb8bff003af8cbc67ff2345e73fc317fe8b5afb33e361f9221ff004c1ff9d7c67e31ff0091a2f07fb317fe8b5a16e0f631e8a28ab2428a28a0028a28a0028a28a0028a28a002834506803dbfe030ff008a1bc447fe9fe31ff90ea2f8ae7fe28aba1fedc7ff00a312a7f80a3fe283f109ff00a7f4ff00d17507c5703fe109baf5f323ff00d0d6a1ee5743c87498d24b97f3239e4d89bb6c31abf19e720d539cc62490c1bbcac9d85d4038f702afe82c7fb456348609257076b4d24881300e7ee30eb50c17307f6c4175716e82d5674796042c46d079196249ce3b9ab249a5b2b28e067ff4fdfb320344b853ee37671ef8af58f83d9ff842189ffa0ab67fefcd794e9b6fb7515babc963fb2c6e5e594b03e6af70067249e98f7af57f84255bc0f2945da875590aafa0f2aa58d6e6b2f414921fddb7d2947414d97fd5b54967d63a3ffc826cbfeb8a7f21452e8dff00208b2ffae29ffa08a29927997c6c3f3443fe9837f3af8dbc63ff002345efd23ffd16b5f61fc6f7db3c43fe9d9bf9d7c7be288e5b9f165e476f13cb2b6cc222e49fddad0b707b18d45589ecaf2dd374f693c6beacb5581cf4abb922d14668cd0014519f6a3340051451400514514005068a0f6a00f74f8063fe280d7cf51fda2bc7fdb2155be2d8c782ae0018cbc7ff00a1ad59f80bc7c3ed77fec240ff00e42155fe2e1cf8327ff7e3ff00d18b51d4ae87926812dfc77f8d298a4ee30596259081f43d3b5509de492791e6004acc4be142f39e781c54fa5c51cf761259e385319dd2486307db201aaa41572b90c41c654e41e7a835648d0aa0f418af6af83fff00222367fe82927fe8a15e2ff515ed3f0838f000f7d565ff00d142a5ec35b9ac3a5365ff005669e07029b28c46d5259f58e8dff208b2ff00ae29ff00a08a29347ff904d97fd714ff00d04514c93cabe357972eb16d04ac543db9c91d7ef578c45e08b6875e9756b3d76fada79001b56dd1c6000307279e95eb7f1eac350935bd2ee6c630e86074625b1820835e606db5c5240b40c7da55ff001a4089ff00e11e94afcbe28b94cb6ee74a85b27dfe6f6ac2d4fe17daeada84b7b79e2e9567940dc469000e000385938e0569e35c43ff0020f90fd083fd693ced71473a65cfbfcb9a2e3b189ff0a6ac1f3b3c6f1a9ffa6ba5c83f931a61f82c87ee78db4a3fef5a4cbfd2b6cdfeaa9f7b4dba0476d8691b58be5fbf61743fed99a7761631bfe1484ac3e4f1a681ff00024947fecb5149f03b521cc3e2ef0b49fef4d2affec95b87c41328f9ad6e07d63341f12e07cd1483ea87fc28bb158e7cfc0fd7bf87c47e123ff6faff00fc45412fc15f12a7ddd5bc2f27fbba863f9a8ae9d7c4d09ea08fa8c7f4a917c476c7b81f851761638f3f06bc5007fc7e7878ff00dc492a193e1078ad46564d0e4ff77528ff00a9aeed35fb56fe351520d6ad7b4894eec394f367f859e2e538fb269edeeba941ff00c555797e1a78ba3049d36dd80fee5f42dfc9abd53fb62061c3a5386ad19fe314ae1ca41f09f4bbdd03c17ab5a6af12db5d4b7c254899d4965d806460fa8358ff0016cffc5273007ba7fe8c5adffed3423ef8aa773a844d74aafe5ba9824f9580619050f434afa8fc8f074bb558d5311b85e84e286bb464da0281d728c01fe55ef922d96ec7916a40e39823ff000a864b7d3987cd65667fed827f855730b53c29eed24c1e5485c6030c1faf15ec9f08c81f0fd70727fb566ffd142ac3d9696dff0030fb139ffa775ad6d10dba696b15a411411adcee291ae064a30ce3f0a4ddc1221f32352cbbc6e5c6e1dc6791fa5319c491b6c57231d76e40fcaaf58cb05999a48ecade4b9948669a5cb6703038fa629d7fa9ddcf0323cc163618f2e350a3f2148a67d45a38ff00894d9e31fea53ff411452691bbfb26cb001fdca77c7f08a299059b8b682e176dcc31cabe8ea1bf9d72fabe99a346496d06098ffb3101fcabaea42013c81401e43a99d3210e21f08b31c754dc0ff3af1bd653c5e9aabc3a6e95acc3a6939172532c80f6db9e71d335f609443fc2bf9535a089bac687fe022803e4bbad47c4291aadbe977884000bc858b371d4fbd654dae78ca33f2c72a8f7873fd2bec46b2b66fbd0467fe022a17d2ac1fef5a427fe022803e3a1e2bf18c7f7a385bfdeb6a53e36f13aff00aeb2b17ff7adf15f5ebf87f4a7fbd650ff00df355a4f0968727deb087fef9a00f92bfe13cd63fe5b68ba6b0f7888a5ff0084ee73febfc35a737d323fa57d552f813c3f275b08ff002aa52fc34f0dc9ff002e4a3f0a00f98ffe138b43c4de15b527bed931fd29478cf443feb7c287fe0320ff000afa3e5f84fe1c7ce2db1f4aa537c1bf0f3fdd42bf4a02e7802f8b3c32dfeb3c3976bfeeb29feb4f5f127839ff00d6693a8c67d941feb5edd37c10d11c7caec0d519be04e9a798ee08a340b9e4235cf0438e62d4a33ef131fe5505cea3e0f69e030dc5dec292a3ee89c6d254153d3fbca07e35eb12fc0580e7cbbafcea8cdf011f931dd2d1a0ee70307fc22577ff001eda9dc93dc6c6e3f4ab0da5683b0bff006a4e89d7730381fa574b75f01f56504d8ddc092e3e56704e0fad66dbfc0ef16e1d352d46def236e80215c501730c5878799b11f88edf3ef28ab3a72e93a669a644d5ada5266f9f32a9da14b8ce33df23f3aeb2c3e014d2106f268d47718aef3c33f06340d29d64b8896794772280b9e31a645a86b12ac5a269b717209c195d4a27d47735edbf0dfc113e9605ceab6b6a6e0f3964dc47d33d2bd0ac34eb4d3e258ed208e3503036ae2ae502b8dc63a03f8514ea2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800ed4514500145145001451450014514500145145001451450014514500145145001451450014514500145145007ffd9),
(2, 'SANDUCHERA P/2 PANES SMART HOME REF 0499', 'Sanduchera para 2 panes, doble indicador de luces, placas antiadherentes.', 22.99, 0xffd8ffe000104a46494600010100000100010000ffdb0084000505050906090909090c130e0e0c0e0e19120e1210170e10101710171710141714141a171313171a14171823181c191f1a182118231823222224272823172735010909050909090c09091321170e1a221c0c182922281a22242222192c222821221423221a1f1f1a1a1c181c221a2424230e192421172f191a172221271f17242affc000110800a000a003012200021101031101ffc400960000000701010100000000000000000000000304050607080209011000020103020304060804050305000000010203000411051206213113224151076171728191081432334292b1b2355274a115232453623443c11663a2c2f001010003010101000000000000000000000002030405010611010002010402010501000000000000000001021103040521123141131442b1f071ffda000c03010002110311003f00d9742850a015f1e458c1662001d493802bed67df48daede5aebcd68b2a344b05bba232e5559cb820e30777737839c9c850398cd5adb89d2d39bc4656e8edfeadfc738f95cd79c556700ee6e988fe4031f024aa9ae578cb4d48e52642ac88cdb19191db602c420206f3ea5cd52f0eab288e3fad05566cf30d956f11de2148c7d9fc39eb938cd2c4905c8222914e319c61f18e9827c88ebd6b933cfebc5bd461be387d2c7b39ea7e95d22992109d8ab0fbd2377c9880b903c83d2db1e2eb9bc2af05d6f539c2ec43bb1d48e409c5334b651cebb5d542bb725ebcff00f26bb1a4c61c10a8a48ef618a31e9cb00f3560006527f08ea322aa9e475af89f2985df6bb7ac622a97c7c5b748d92e8fed8c8fee314e96fc6111fbc88fb50eef9820556b3693731fdccd28c0e4c4894018c1186dc09f1e9c81c67ad229a2bf8c86320dccca00ec71bf38231def6f991e02a55e4f735f56cab9d868597ad96bf6730c769b4f938d9fdfa52e4ba89ce15d49f20c0d67a1a8df5b905e04652179abb2f964619082a739c8383472eb6c321ad3da438f2f58cf8568af39ab1d5e8aadc3d7f1b34050aa7ec754fadcdd84bbd0e32bbdf3bc038201c93ddc8ca903ad482f0fd5a09d63ddbf6377f71ea398c79731eaaba39caf79aa89e36626232b02850439504f90a15d0650a1428500a1428500ace1c79f4878ac649ed7414497b22c1efa5c98015ebd920c197decaaf96fad07c5129874ad4e45ea96b7047c118d797d6d6626b6589c1656451cba8c0183ed1f114160a717716f1fc9288ef5c40870f3c8fd8403d4228c2a31f51591aac5d0786574f4b6b632897644e0ca408f7bbcaeed953b8a8c48a10af8ae4f88a897a3ebc82cecd74d9e748cc6ee52473d945287ef10d27358a41d3bf84618ef823067b7c9aa690609275df66d23b3318955630c9c876c19e2954e06181f307a8acfbaa7968f5eda36d6c5ceedaa8378b014dccf08ca1555520b6d8c93f642e1798ebde502b9d6ecadee2e0b451a9754c67077a310007cf21bff005e9e42a1bad6b0924978c06f62580c824ae1b085d8e108ce4e4676061cf93d4a2ef528dafa272f9dd1ec74073949b11bb138daab138c06190f9e43a5713c2d0ebc78e6b6824b1d4aee39336ef9de577bb47bcaa15de1572c171cf25ff17e2e88a1d61e3310870b142c17193ca362adc91c81dc20f5dd95c790a610ed69159dbb059165655dcab802489d6251183bcf7c15dfd4231e44f3a4d776d15bdccc8f17d86cba13ca40c0b892351cda2895831c31c10412d91528aa53159585a6f19daea0c14068e520928ca401b481cf3800f90ebe35245d4639b72ab2b95382a8437dae5e6147cfff001543cb38b32f951baddb006e219c803af5236e0e00c6e6c73f373b03756f3c86394f64cc40932589011bee8742d850becdde22934ac23f6d13e972cf61f5afbb1b47466030aa3a1e63993eaf8122935dda8b45965cef2cf8c9db9e876155eeae405da727bc47414f5a75c2a476f0730a91a839c31738c658fb799e5cfe62a35c517ab69656ecc4299261cd872ca76871edf1cfaaa39ef30a226d98ac88827ff556242109bae416072dea6cff00cfecfac9e5d454d9e46922608bb8b29036e31cc781ce3afacd54763aa19efacf2cc9df90210f82422160b8040c16f31532b6bbba442b6b6eea819fb1c765d980a3628c07181b94d46d798cadb68e7c532d17d3070bea2881351443d089835be08e4412e156a7f677f6f7c825b6952543f8d1c3afcc122bced7d3384755bb9634fae69f761dc308f13a97070f855dcfd7c06289d5782b8878554ea1a7dc9ba8a24cb3a2bc1751af9ba644c02f8e1c94fc55f475b44c74e2df4ad49c59e8cd0ac37c0be9f75b8c88de4173b473827e6c57ce39d407fce25ad67c11e9174ce2b5290318ae5465ed64c0907ad3c244ff0092fc403524131a14050a041c5633a4ea83ced2e7f635799763ce28bdd5af4df89ff85ea5fd2dc7ec6af326c7ee62f716816bdcc89821b3ed01bf5c9aeec7892e34d6df6d24b6e73cdada77b62def81b95a924f4d1250cac96e3efae6efae2c37058119bab40afb7c84f6dd94df1635278aff0049d4de3745756061cac13a5ca12a4637c5208a4c21ebfe68256a8635c150dd45536da52cba9bcbd1a1658da3307d5ef61399b7f67296b43218df9aa6f06118dcc481373620b64631d5f26a76576b742197b20a313e0b431f75ba4aa644ee96187673923cb1546daead776f8ece66c0f063da2fb02b6e1520b0e2fbab5944c1407f192276b591bc72cc87bc6a8b7191f1fdfdfeb457959f958165af26c654815d49704e4315ee8254a8c651791ce30a49c6d069cf4cd49764916f5730063c9b72276c097c3001197791b596a18dc7cf390f76bdb37f3cb0453c83dd9b093fcde98e4e25d3b2c30215cfd95491b3d47566723af991fdab3df8ab7c34d395a7e4d871cafd9ef76fc2321570467c4f263faf4154e7a47e246b2b0d26dda2ed253311d882439daa558800393ccf8a9a4169e9574d31451fd7e2202f4920994a537cbc77a7086048a7b3241efb7f9a923e41e6ef90c7e62aaa6c352b789b474f2777a589c4f651c2b24925e594b3c52c0a049849f69ee321217aeedb9c150c801f3ab3adad9e1b69332c9b55a4c364067cff009bddfb4e72cc48e64e066aa6b2e32d2629edd9ee232f1ef28e1d06cddcfed778afcc1ea3a134fe7d26e9b045d9dba46db130912ca7002f20a0a408403ea75a95f8fb6a4fafdbd8dfd2b11dfe935b3821d39192d224854fdaecd42163e6ec3bcc4f9b13445eeb70e8f00d42762b12b80ae0643bf82467a3b9fe55c9f3e59aafe2e35d56f30208aced3ca4282675f63dc3dc7f6415f64b3d3aea5fae6b9c448d363a8df773007aaa13f617fe2a02d767cbac4393339537a3690e97b36a52c42dd59e6315bf8a8973804782a2b602f226a6304d2d9b457b1655ad9d5e37e84347de18fd0f98241a7fd5389b85b4b89ce9b6b2dcb2f5babb3b107bb08c134c573772deac8d2919d8d80061472f015e3c7a16a4300478d7dae34597b6b1b393f9a088fcd41aee812f127f0cd47fa69ff61af322c3ee62f717f4af4e388ff86ea1fd34ff00b0d799161f7317b8bfa507771d29a24a76b8e94cef4041ae6ba35c8a03168d4a2851a9407bf4a8f5ef8d481f98a61bda08e4bd68ba365e468aa03ed4e258fde152256c546e0fbc8fde5a910eb407890d2b858d2014ba1eb40a754e76171ec4fdcb5615af793daa3fb8a80ea0336373ee8fdcb53ed38ee8e23fcc887e6a2837ff00073f69a2e90fe7656a7e71ad39d477d1dc9da70f68a7cace01f9502d48a808e21fe1d7ff00d3cffb0d799161f710fb8bfa57a73af7f0fbefe9e6fd86bcc6b019821f717f4a0171d299dfad3c5cf4a677eb4041ae6ba35f283b5a3568a5a35680e7e94c37b4fcfd2986f3a9a08ecdd68aa366eb45501b0fdb4f78548fc6a351fdb4f68a92f8d074296472247969338f552314ad51640558641a0fb1cf26af21b38cc702bab6649a6589405e7de76e5f01926a5b63ab5ae86b15a963793971cb0d15b8c8006e6244d22f2ced5117916a89dc68f1760ee84ee8c1625b9ee0a09c7801edc51b6ba1decd1c3710a2b9650548701c03e61b68a0d0fc23e9d755e1db782ce6b686ea08570bd6da603deefa37e45ad2dc01e9434ee385b816c924335b0432412819c3f465652cacb58d382fd1aeb9c4091c926912490c8e40b917c9648bb0956dc36cee402304aa56cdf473c031f0841380630f3ecdcb0a148936780772f3ca724e647739f00b40bfd26ebb1e85c3daadcbf5303a463c5a49c76318fced5e79c1184455f202b68fd2271ffa6d7fadb5ac66a302811dcd33353cdd532b75a024d0a0685018b462d1628d5a031fa5315df534fafd298aefc6823d3f5a268e9fad1341d2f55f68a9378fcea2f5283f6be741d0a5d0f5a4229743d681dd86eb7b81e70cbfb4d493861b758d9fb9fa12298add77a3af9a38f9834edc20dbb4fb5f63ff00676a0dbfe855f3a022ff0025c5cfef2d5655555e835f3a35c0f2bc97f646d56ad0535f48819e1b1fd6dad63f88855e6011e46b62fd20c67868ff005969fbab1d7e1a06fba9ac9884794c0c7a6f05a3fce0123e20537dc6933c69daa81247fee464489f31914d5ae7da5f635315b5ccb68fda412346dfcc8c50fc71d681e4d0146271134dcaf2049ffe607632fe651b4fc5695a0b1b9fb99fb26fe49c6c1f090653e6568120a356945ce9d3da80d246429e8e3bc87d8c320d27534063f4a62bbf1a7d7e94c577e3411f9bad11474dd4d13400d4a3f1546304f21527f1a0e852e87ad2114ba1eb4124d3c6580f3a5bc19fc3edfdb27ee3486c1b6b2b791a7ed074e6d3e0585b24e59b382061fbc08f1db8e7bba1a0d7be8264ce9ba82795e13f38a2ab7ea94f40effe9b554f29e23f34c55d741557a79b47b8e199dd3a413dabb7ba1c21ac60dd0d7a41ace9d0ead69736370bba2b989d1c74eeb82a707c0d79fbc51c3179c2f79269f7a32c0131cd8c25c20e9227ff0075fc07d5b490aaf5cfb6bec6a8fa46f2b048d4bb31c05505998f9003993521d73ed27b1a9bb46d51f48bdb4bf8d1647b5951d51f76c2d190cb9dac8dc88cf22281d7883846fb87659e2bbeccf6332c65d25570cef189d76ae44a5591810fb029a605f2abb63f493a76af62f16a300176235c4f3c2b7d04b2451c1116640bbc3ce913479d8db0c81b7d38eb7c27a44fa26af3e9255a2b4962995a0c5e3e33750a02e58ba0921eca7b942d98482420e80292b0bd9ec4936f23479ea14f74fbc8728df1069ed7588a7ffaab5527fdc84f62ff0015ef21f86ca8e0a3874a07e93ea720ff002ae36ffc655287f30dc9fde98af2ce4c12b871e6ac1c7f6ae25e94c33a8ce6808b84652723149abbdc4f8d2d8283bb3b62a77bf87414e82888fa54bd788ede28a28a1d2ed4308d03cb2a1b8690a281bb076aa92d96f1273862db56809d0f8766d622b8b8596182080a87b89e431c5bdc12b1aed57777214b6d5538032d8a7cbde10934fb7fad7d65255c0650b1cb1ef5271b977aa363c412a0351da27a42d6ece49e2b054ed6f24460b1404c81a34ec8084210c06c1cc51fadddf12df234bab45388c6c2e6484c6c76e76190b0ed982fac90b43a4552e0182e67132a0b79625ecc36d965ed03e5907e258ca61bcb70a360e34bb8183994c98844643e08d98d9b148c10a13ba0780a8b6a9a44fa6db58dd4bb765e898c78397c452342db87865d4e3ae714874a55b9b88d64e680e587985e78f8f4a0dbbe8378cadac9de0bf536afaa180db2b90c24fb4bef209323617550f5a8abce1d016e352d4ad1f24cd35d5be0f8ee32205f957a3d402906bfc2fa7f10db1b4d46059a3c8201c86461c83238c3a37ad4834be850632e3dfa3eea705ca0d16337d038fc72c714f01f2624c4aeb59c35ee17bfd02716f7f6f25b48738499366fc1c651fec38f5a935eae5737fa55aea703db5e4293c4ff006a39104887daac08a0f22f61438618a5113b46db9095255812a4a92ae0ab2923a8604823a106b767157d1ab47bf0d269133d83ff00b673716df918875f83d668e2af435c45c33b9e7b333423fefdae6e13e2981327b4a01415728a3a8b4c30ca90c3cc1cd1b4054bd29927a7c97a531cf40de3a8a5d0d211d6974340e11f4a946976da3bc51bdf5d4f1c85df7471421c0500152188c65be3ec1d6a2f1f4a9269dc3779a843f598bb358419019659561406300b649f780c7539e4319347a97f07716e97c3926af9b69d92e920584aca127458d8b3abcc9b1d44be3d9901b1b5a956afc7d6d7b03db59588b7ed1194b1909383d4904c8f2315e5977eee390a47c29a3e916d7937f8ade5ac816d37c6b969adc4a6454db2e0c664648c990441972791e8d522d6755d0a1b6961b578a6674c6c8ed238558fe1dbb37ecdbd4b3ca589c1c5055b370fc3a8891c49d9c81411919121c85c7a8807713e40d11a7f0c5ed9c9da6d1229520943b8afb57937c81a7eb2f0a9869d13ccf1c51219249582a46a32eec7a2a8ff00f000124800d1e2d4f40bc2c2ef5292fe75c2d8229443e324c1914fb11437c581ad73514f47bc2678634d482521a7958bcec3a6f200dabe6b180141f1c67c4d4ae8050a1428050a1428050a142821bc57e8af87b8a8b3df592f6cd9ff005116609fe2e982fec6dc2b3a713fd186f21cbe8b7cb32f84372363fc254050fe44ad7b4283cbae26e0cd738673fe29a74d0a8ffba17b4879ff00eea968ff00f9557b2ca8fd0d7b0e466a0daffa20e16d7c96bbd321de7abc40db39f6b4650b50794e14d2d841f2addfa97d13f409c96b4bbb983d44a4c9fb15aaa4e36fa34ea9c3f0453e93336a597c3c4b088654f261df60f419ee3071467660904af3f3c569de1afa30dedfd94173a96a06ca69012d6a2dc4cd1f965c4b56059fd15b485ffa9d46e9fdceca2fd51e831405a5713a8655ce598f251cd8fb07535bf6cbe8f1c216606fb579fd72dccbfa2b22d5a3a1f09693a00c69b6305b7998a25466f7980dc683117087a20e21d70ab9b6367078cd740a7e58794cdf111835adf81fd1ae9dc24a5e1ccd72cb87bb931bfd6b18e91a7a875c0dc5aa6f428050a14283ffd9),
(3, 'REFRIGERADORA 298 L FRENCH DOBLE CAJON ELECTROLUX CROMADA', 'Electrolux crea la mejor forma de conservar tus alimentos y tenerlos siempre frescos.', 779.00, 0xffd8ffe000104a46494600010101006000600000ffdb0043000604040504040605050506060607090e0909080809120d0d0a0e1512161615121414171a211c17181f1914141d271d1f2223252525161c292c28242b21242524ffdb00430106060609080911090911241814182424242424242424242424242424242424242424242424242424242424242424242424242424242424242424242424242424ffc20011080096009603012200021101031101ffc4001b00010002030101000000000000000000000005060203040701ffc400160101010100000000000000000000000000000102ffda000c03010002100310000001f54000d7b28856e3b4f516593d72068cb7e93649d73bcb4800000f8fa143be531283d91d602d1d78472f66ff0023f6248ceac36ad940000000aa5aeb89e633d0bdeb7e8bfbca513d7fcbfd0b533fbc3db9b64000000020e72213cc2523e4cbb7572482f067d9a88b746a2c0000000044cb43279bf7f07497b928a925d9ab3c0e4d3b35161000000020a76b694c8ed9a8f439485975df8fcc4e4d6f858c0000000ab5a6a69e739e92fa14c57e68ecc70c4e5cb4e659c0000000a8dba9e9e73f3efd5bbcd41cc9bfe6189cbbb8fa4b68000000153b6694f10cb7e82e5310528bd9af50e0eea3dc0bc000000000f39ac09eda14084910ea00007fffc4002b1000000501060407010000000000000000010203040500112122303132101213330614152023243425ffda0008010100010502f69ce54c93330ab959a98ea522985854c2b10502eb96bd49725307de7432a6dc28658c9750d1d88122d01684a1425a502e84cb992fda13723a649745ca25b8c62a642ba6ea0885281742eb952e16b8761638287df442e9b0fe7b6ea75c42950ba1f5ca940b567c163a27ef442e9e00f4c48c890442950ba277654887c9221f648bd8f9393402a4de91cb3e77c61f506c34ac835a881030e53e0b4d261f6132ff00412d05329cbe4900a14894aa0959125e53653cd64bf427fb11d02868695d22f7e53ca92fd098fdd4682868695d22f7e53d1be4713a4cd6bf406e0e2b6915bb29f8e258bccea38c275501b8bc56db13bb2a487e47cb74cd1fab71b8a3c0697db11ae549f76477b01c4dc6e20d5bc17db0fae54a77a437b21c4dc6e20d5b56d381c30bae54a77dfef69b9be84ab6ada703860f2e53befbb8d7737d0ba7072386032e593301def75b6e6fa174ab69c9b0f87b4ca5532ac49647cb3e6c20064542d8552be51af2eecd4e2544e7f0b1f9d1cbf14302f347b313baf6290ac155506a8b52fb7fffc400161101010100000000000000000000000000014060ffda0008010301013f01a4317fffc4001811010100030000000000000000000000000130102040ffda0008010201013f01a1232ee4891224767fffc40034100001030104050a0603000000000000000100020311303171811012202122041341516191a1b1b2c1233233637382425272ffda0008010100063f02d92f71a3474ad589ee8e317006955c4e71c4abb46e7bc7ec56e95de6b8831fe09ff0f50b0f5d6ccc15e06f8a907486d42ae9bf4cf88b33da023dac23c0a7c7d1f30d1acf7068eb2a8c9a371ea0ed33e22cf2d03f1b7d2341ff004145ad5a57b74cf959e4bb937f1b7d2343eb755be680635e3588bf1d33e5ef6792083cb5c1bcdb7c82b9fdc9d1c25c24a822a3b500f9016d78b70ebaf52fa9e0a86668c54e45dbacf24cc428ddf65be91a28e6821579b0be46f72fa6cee5301b86ef7b3c9331517e26fa46d4d97bda3310a31f69be91b5365ef691a6f646df48da9b2f7b3c96b7f561f228c87a76a6cbdecf24feb736836e6cacf25ddb73e56792396dcf9599c2c27c4599c2c394622cf9cfe26c394622ccb1e2a0a31175caf0af5b838e0170c329fd57d1231213e36c7f29a54953937eb0b4672baef3c05aa2d50c1c4364c8ee4edd637d37556ac31b631d9b5fffc400271000020102040603010100000000000000000111213130417191105181b1c1f02061a1d1e1ffda0008010100013f21f8ad1ab2db233f4ba6fb3187ea85d976145451a13f9d077671dc2b14d1b1554013b0f0e8c913497d13aee7f6732964149994d0bcc5953f1c0ae163db9e1ae64ae990e76741a06ea57ca280665bddb084376d906f8558247ab7c3db640e8bc9d641a22286f47721e7239ee9e055891ade78755fa901eb3e3a45016ea92bc40671b2c7197815253ad874f2fa0ca7f5e44c4d086a1dab72a0b21a4cb08ab524d4bc12d02e544e6dc3ff004222a4ceca82b932af7c5825073090ad09b659344a84dd47efb2257b514ab914ad8652fcae096d7c05fc435dd0f79cdf0463d10fc4bf8968ba04682bcaf2c544c9b1a01c6c6343e23a2044acc2d8f25e3229688a61891b1eac434300988e3794c8c92c140521b186a8f5f5c378e98f2fa77108a2288c3635434ea79e1dcd23ed7710214052e2540d3a9e786fb12b7d1772d1686a712b0797edbe1fe7957422951e81c492540d3e9b3c3a2d294a7932c682d0581c3631583cbbde1e1c3714320b9e57cd5fc88928ea209493add9637dd4aee2b1539ade4a90dcf43463b99745ad88c215a98547475180c9393eba7c66dee599c9a21d1b978c4ebf2fffda000c03010002000300000010e30c8a91833cf3ca304df407f0c30cb042fe390a00000e140e7134200000f101eb81c200000f3c1c3c0023cf3cf2c5ee724a3c73cf3c4dad34e3cf3cf3c5cf018e3cf3cf3c80303c03cf3cffc4001a110100030101010000000000000000000001001030201140ffda0008010301013f10a726c7b699e5db930c5862e4e490f87fffc4001b11000301000301000000000000000000000001313010112040ffda0008010201013f10e121e34310d75ee862a3f7ee878d0f1a1e343b8d0ee29f43f87fffc400271001000201020407010101000000000000010011213141517191b11020306181a1f0c1d1e1ffda0008010100013f10f2bea83b4098e1d101b6d472d1836eb0abcf0ee8e0a5e289621e8768699360c74b8ee88d8f60b0db19ee5f229f519ac42332288d1c1dbcecb97e0aa0dc4ecdce2ab541baab356949d6abe60d2ad9c3da1694c42c1ba11628bb0d653b4a706d2e0fd579cf93070a0e2d5760849a9ebdd63ec0f989ba0270014e90b304d2c0425cd6628e084e45e653b4ae540fc54e666666667c1f25ab5fb6350d633d0cadf78ec5197605a351ad54c058b481669b1775f331e9360da54ff55e7be4d35f865236488129b871feed6acaaf780d2a2a142fb8a30fbe26c4e850c2ae5cb972fcd45c45f6c338bcdcf60ff5a42ba4e754bc272b43b950bf577b32a5e2982b5d24379c238015504b17afb18c4d191cc7f934683b0978164569402882edfb3afa4cced683bb34ad93ed99bf63e15feb2984317518bb12be84d96a3a5cbbb5cffca5f3271ff840b82bc20eaa3a74f3dc35f1153ecfec37ee77d885242b8693c0083a7e8f8d7c71f8e1c5ee42a56c9e0f609a3c18f2e64fe9d427b7bb331693a5df430250fef1ce59c898e584cee7c4e3be6c2a578579e94bd9dd8c7b967b0510fb4b5b151f407c4b33ed2c358e1314e9f1df37d328adb7bb01d40ab5c82f817e6a180a0a00d89d1a5c3c0c2cd162be7fa6da1f8cccaf6a3ae541ca6ef2e19f06f195f27d39163c5f8ccb3f0653a425f06a4658a3973f7ed3cddbc8cc05e917cd7750d49b3a0c7c3a7972cff9af4ac4d7c3b30e1e3dc60829f012a6bd653c994d7a50c78d829d8346643c47f675a82a1c44f7e09bcaf2ed3975798dbc8c021447f4e0cbc4c0e8d853e68450ca6e21e5bc9b8223bf9e89b98697d908de7db03b9fa8599abc250528c989468625dd2f558be3e9b88779bdcd0a5f8d0155b44df6c2910bb7b26d0f1c21693711405776b31f59893b4d15abf3e6ffd9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `contrasena`) VALUES
(1, 'Vicente', 'vi-cen@hotmail.com', '456'),
(2, 'k', 'de@ui.com', '$2y$10$1SWSIpBcmhjSr.NVmDee7e0Trm07NDNeqE2tkMiexSSRYEKTYoNTG'),
(3, 'q', 'de@io.com', '78'),
(4, 'Max', 'Max48@outlook.com', 'yui'),
(5, 'Juner', 'derg@io.com', 'rt85');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `formulario`
--
ALTER TABLE `formulario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `formulario`
--
ALTER TABLE `formulario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
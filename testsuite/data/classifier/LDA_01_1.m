classifier_name = 'LDA';
classifier_accuracy = 1e-07;
init_random = 42;
classifier_data_train = [0.711607728, 0.158555968, 0.473345881, 0.400393854, 0.564999971, 0.430705332, 0.645604113, 0.248513709, 0.613241206, 0.108786609, 0.765068574, 0.244204473, 0.324991895, 0.37483057, 0.918111339, 0.68125563, 0.744221673, 0.0118552932, 0.592772299, 0.896197798, 0.125300896, 0.472914045;0.414109082, 0.530193555, 0.750353122, 0.791114118, 0.100585657, 0.553333672, 0.621717185, 0.611491334, 0.28590629, 0.705432696, 0.982423767, 0.366708648, 0.200320486, 0.995845602, 0.376149784, 0.507239498, 0.396606125, 0.178607909, 0.0738704179, 0.901464576, 0.881474777, 0.064923623;0.946771481, 0.613995124, 0.681675648, 0.600455687, 0.999009462, 0.318172691, 0.797076807, 0.829490673, 0.206589112, 0.603344965, 0.148856804, 0.189282865, 0.79317082, 0.291439083, 0.100401143, 0.0313217852, 0.213497394, 0.11048382, 0.854546502, 0.575061559, 0.118839134, 0.695504436;0.0780495284, 0.0498002829, 0.725893661, 0.556623918, 0.959719689, 0.180627176, 0.213214196, 0.239811671, 0.119940184, 0.522958278, 0.625356402, 0.458425874, 0.976543106, 0.423937256, 0.31189015, 0.891867984, 0.443738277, 0.452434495, 0.120564496, 0.569719407, 0.688110399, 0.533741981;0.802418287, 0.49191642, 0.647507757, 0.956796825, 0.153850055, 0.786296885, 0.945553344, 0.971005184, 0.136365654, 0.126658466, 0.113602369, 0.537605707, 0.589380938, 0.542773502, 0.47849086, 0.632932179, 0.971174405, 0.670402891, 0.883386487, 0.567761225, 0.129090662, 0.868148437;0.160853498, 0.293266086, 0.653682666, 0.632659376, 0.11727177, 0.139702428, 0.720078161, 0.4436782, 0.921158494, 0.0524604929, 0.076672382, 0.171731163, 0.346451307, 0.972578418, 0.339076848, 0.0652699925, 0.850618209, 0.851036939, 0.565632193, 0.931608095, 0.781116846, 0.291458418;0.965517632, 0.355535365, 0.920554171, 0.934911795, 0.832333141, 0.11815555, 0.171290555, 0.310668506, 0.543210987, 0.111595393, 0.778420612, 0.556823711, 0.526963066, 0.729911314, 0.899774835, 0.0617938107, 0.425505733, 0.531268005, 0.853111824, 0.828606134, 0.15531302, 0.399960073;0.819517605, 0.193925224, 0.268326069, 0.236636741, 0.866608229, 0.811987969, 0.962740586, 0.794729341, 0.876833029, 0.989841382, 0.907265713, 0.482251592, 0.0718861229, 0.50157865, 0.553558794, 0.296094617, 0.0338754644, 0.302729377, 0.624585245, 0.572075404, 0.789668463, 0.615904734;0.425334596, 0.0361526605, 0.87187638, 0.099886318, 0.276136416, 0.411484712, 0.0802077078, 0.561672207, 0.140833689, 0.960206207, 0.735183944, 0.763551234, 0.617619382, 0.751079194, 0.846644064, 0.425500449, 0.215836768, 0.994699159, 0.414732636, 0.321421278, 0.715101339, 0.487015392;0.581987521, 0.196600797, 0.333397128, 0.112554507, 0.242098957, 0.908610738, 0.746525682, 0.255365627, 0.884417975, 0.790820657, 0.283467722, 0.395225651, 0.899426822, 0.559958903, 0.631389682, 0.146630815, 0.8116839, 0.246516324, 0.860688851, 0.563616586, 0.432574265, 0.338535077;0.838846016, 0.532169961, 0.45606993, 0.402272814, 0.574228614, 0.365715857, 0.325844091, 0.243932564, 0.292402901, 0.752792921, 0.669470004, 0.260393014, 0.260283197, 0.679740558, 0.547246042, 0.323245317, 0.764662555, 0.375882854, 0.726357018, 0.941960488, 0.47557741, 0.29941278];
classifier_label_type = 'twoclass';
classifier_labels = [-1, -1, 1, -1, -1, -1, 1, -1, -1, -1, 1, -1, 1, -1, -1, -1, -1, -1, -1, -1, 1, 1];
classifier_data_test = [0.504576968, 0.176613693, 0.85533613, 0.626916279, 0.988067942, 0.365406131, 0.00725242802, 0.470432248, 0.6588347, 0.628083477, 0.675143854, 0.189763558, 0.148301735, 0.31347529, 0.82493848, 0.00479982482, 0.0638260347, 0.330357689, 0.185165045, 0.0549534539, 0.0458520184, 0.926500619, 0.0322153605, 0.888991639, 0.173798857, 0.462534943, 0.916468349, 0.481067191, 0.509113692, 0.555518667, 0.840336238, 0.548719606, 0.170233032, 0.231140342;0.754682521, 0.037175288, 0.917303145, 0.26655012, 0.109430405, 0.897204131, 0.0776658618, 0.0466359005, 0.882811799, 0.234076204, 0.827445736, 0.839629388, 0.459438747, 0.981917785, 0.214992224, 0.270469106, 0.432347738, 0.840361505, 0.0246636883, 0.12155663, 0.878992308, 0.438762221, 0.933472792, 0.959726838, 0.344873784, 0.411863465, 0.140811862, 0.426902087, 0.360378122, 0.716091918, 0.78391651, 0.184130023, 0.649044467, 0.66507744;0.774398537, 0.932495875, 0.725758875, 0.675323527, 0.346495063, 0.107905717, 0.16977694, 0.291003363, 0.975101901, 0.336078388, 0.236927862, 0.262456303, 0.96227806, 0.220129421, 0.580761092, 0.674236562, 0.483680446, 0.836369293, 0.959928121, 0.520622465, 0.328592163, 0.693634841, 0.702035668, 0.391332836, 0.148282538, 0.234929193, 0.796911566, 0.778545821, 0.935076616, 0.86975925, 0.728834147, 0.100331053, 0.689991196, 0.335049171;0.171970402, 0.293478577, 0.738652651, 0.754931733, 0.346857011, 0.831435619, 0.21147032, 0.227126366, 0.186413847, 0.855416155, 0.420682237, 0.596162798, 0.435606497, 0.0365698124, 0.581185343, 0.441360079, 0.91289598, 0.888307747, 0.668237017, 0.747745821, 0.338639695, 0.378171814, 0.784510136, 0.576229412, 0.0214398666, 0.0948304388, 0.958697741, 0.716884176, 0.893341642, 0.325468989, 0.265746376, 0.188394767, 0.387581667, 0.746770445;0.442470927, 0.529899176, 0.5811224, 0.235325551, 0.990565213, 0.155452292, 0.601308364, 0.752869445, 0.112201367, 0.958786644, 0.167892692, 0.0192317035, 0.621125299, 0.843440444, 0.361094443, 0.832843093, 0.317073769, 0.17245184, 0.539506574, 0.862271729, 0.85401553, 0.595941596, 0.182531551, 0.69092057, 0.0646655439, 0.326820306, 0.771549935, 0.280394179, 0.557518265, 0.712187982, 0.421339817, 0.234948563, 0.657778407, 0.975543194;0.864790222, 0.97121879, 0.237314161, 0.404516403, 0.291513858, 0.471250717, 0.00810094165, 0.428969981, 0.685929221, 0.53251487, 0.991507688, 0.0937248661, 0.323849631, 0.0919379359, 0.616712331, 0.34965338, 0.78093318, 0.956888443, 0.0267705857, 0.549275008, 0.0928450865, 0.516800595, 0.6827795, 0.234405744, 0.72724232, 0.250544424, 0.114248453, 0.333842064, 0.531198794, 0.213447881, 0.219934314, 0.879062005, 0.694672004, 0.00133363949;0.437597744, 0.167422948, 0.541030289, 0.459587006, 0.265535606, 0.931902684, 0.887588991, 0.615792552, 0.708954123, 0.63378842, 0.636344315, 0.856095332, 0.92773228, 0.164216958, 0.0559802849, 0.536429546, 0.375883955, 0.500092336, 0.0944570513, 0.103300478, 0.479631956, 0.225986766, 0.370804198, 0.305759487, 0.445433675, 0.656413134, 0.197647781, 0.835362354, 0.512723201, 0.712248892, 0.927265633, 0.929984783, 0.186557912, 0.121015717;0.129183918, 0.945737959, 0.494952134, 0.566390721, 0.659129913, 0.551750883, 0.295992625, 0.243369713, 0.0505755661, 0.182694813, 0.257341988, 0.681535, 0.493300216, 0.332654501, 0.863026948, 0.960917432, 0.571411393, 0.311245253, 0.326185061, 0.0463532694, 0.743865281, 0.33902855, 0.796345775, 0.549669669, 0.747574636, 0.730542631, 0.466991454, 0.927842267, 0.509892576, 0.416670083, 0.447379823, 0.269833453, 0.411346249, 0.592658648;0.392750184, 0.197584586, 0.799947049, 0.356556224, 0.282042355, 0.867828502, 0.679408558, 0.501702984, 0.404262715, 0.5654435, 0.832855809, 0.901189122, 0.915251884, 0.834255504, 0.304182478, 0.861362719, 0.393676184, 0.547737444, 0.831134765, 0.436289359, 0.460663745, 0.251759387, 0.856374098, 0.044346862, 0.558276524, 0.374852273, 0.260835163, 0.310016356, 0.857414847, 0.539948227, 0.302755371, 0.0832177027, 0.430716622, 0.308421089;0.381441082, 0.538252746, 0.997381127, 0.845981292, 0.552940748, 0.582551696, 0.399638482, 0.678539244, 0.889144962, 0.219184346, 0.164263664, 0.873819776, 0.101572144, 0.872636688, 0.812402484, 0.859360225, 0.0203408311, 0.0526733318, 0.25741123, 0.811288854, 0.216443083, 0.347028025, 0.372337818, 0.644241401, 0.188913856, 0.724631337, 0.356166965, 0.469014431, 0.0355518775, 0.476483208, 0.802929841, 0.621133407, 0.297343748, 0.318276546;0.933524313, 0.0838084335, 0.899339409, 0.619207925, 0.356417855, 0.455882588, 0.0297807873, 0.969925574, 0.0908989015, 0.953254856, 0.429047994, 0.567164546, 0.63445314, 0.457909407, 0.0175654557, 0.850452918, 0.556115541, 0.431365456, 0.75898644, 0.733204805, 0.44596527, 0.308607682, 0.601076799, 0.24714507, 0.145232869, 0.514767374, 0.404655418, 0.160715585, 0.76405559, 0.607356383, 0.52674975, 0.0638757839, 0.852729965, 0.226769553];
classifier_gamma = 0.1;
classifier_feature_type = 'Real';
classifier_type = 'lda';
classifier_num_threads = 1;
classifier_classified = [-2.02229935, 1.54749975, 2.08440331, 0.578128863, -0.968283551, 1.14116969, -3.44675196, -6.40360711, 4.51483303, -3.23845597, 1.57037919, -0.367832062, -0.999751194, -1.09059361, 4.29778956, -2.89985534, -0.415646737, 3.89204882, -1.11493951, -2.41127729, -2.53627359, 1.74760752, 2.52172026, 2.23796066, -1.81995063, -3.58987586, 2.24345415, 2.37363761, 1.40947592, -0.257567622, 0.0927375756, -1.92217859, -2.21429792, 0.199864912];
classifier_feature_class = 'simple';
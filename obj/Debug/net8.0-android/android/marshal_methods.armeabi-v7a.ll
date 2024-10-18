; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [414 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [822 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 31127110, ; 3: de/Microsoft.VisualStudio.Validation.resources.dll => 0x1daf646 => 385
	i32 32687329, ; 4: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 295
	i32 34715100, ; 5: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 329
	i32 34839235, ; 6: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39092988, ; 7: it/StreamJsonRpc.resources.dll => 0x25482fc => 401
	i32 39109920, ; 8: Newtonsoft.Json.dll => 0x254c520 => 233
	i32 39485524, ; 9: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 10: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 11: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 12: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 370
	i32 68219467, ; 13: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 14: Microsoft.Maui.Graphics.dll => 0x44bb714 => 209
	i32 82292897, ; 15: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 98325684, ; 16: Microsoft.Extensions.Diagnostics.Abstractions => 0x5dc54b4 => 195
	i32 101534019, ; 17: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 313
	i32 108733175, ; 18: cs\StreamJsonRpc.resources => 0x67b22f7 => 397
	i32 113080162, ; 19: ADRaffy.ENSNormalize => 0x6bd7762 => 173
	i32 117431740, ; 20: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120362947, ; 21: es\Microsoft.VisualStudio.Validation.resources => 0x72c97c3 => 386
	i32 120558881, ; 22: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 313
	i32 122350210, ; 23: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 24: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 333
	i32 142721839, ; 25: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 26: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 153123973, ; 27: zh-Hant/Microsoft.VisualStudio.Threading.resources.dll => 0x9207c85 => 383
	i32 157393651, ; 28: it\StreamJsonRpc.resources => 0x961a2f3 => 401
	i32 159306688, ; 29: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 30: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 269
	i32 176265551, ; 31: System.ServiceProcess => 0xa81994f => 132
	i32 176714968, ; 32: Microsoft.AspNetCore.WebUtilities.dll => 0xa8874d8 => 187
	i32 182299935, ; 33: IndexRange.dll => 0xaddad1f => 183
	i32 182336117, ; 34: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 315
	i32 184328833, ; 35: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 36: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 367
	i32 199333315, ; 37: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 368
	i32 205061960, ; 38: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 39: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 267
	i32 220171995, ; 40: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 221958352, ; 41: Microsoft.Extensions.Diagnostics.dll => 0xd3ad0d0 => 194
	i32 230216969, ; 42: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 289
	i32 230752869, ; 43: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 44: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 45: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 46: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 47: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 272
	i32 273259262, ; 48: pl/Microsoft.VisualStudio.Threading.resources.dll => 0x10499afe => 378
	i32 276479776, ; 49: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 50: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 291
	i32 280482487, ; 51: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 288
	i32 280992041, ; 52: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 339
	i32 291076382, ; 53: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 291275502, ; 54: Microsoft.Extensions.Http.dll => 0x115c82ee => 196
	i32 291980066, ; 55: HotChocolate.Language.SyntaxTree => 0x11674322 => 179
	i32 298918909, ; 56: System.Net.Ping.dll => 0x11d123fd => 69
	i32 304642387, ; 57: de/StreamJsonRpc.resources.dll => 0x12287953 => 398
	i32 317674968, ; 58: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 367
	i32 318968648, ; 59: Xamarin.AndroidX.Activity.dll => 0x13031348 => 258
	i32 321597661, ; 60: System.Numerics => 0x132b30dd => 83
	i32 323872715, ; 61: tr\Microsoft.VisualStudio.Threading.resources => 0x134de7cb => 381
	i32 336156722, ; 62: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 352
	i32 342366114, ; 63: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 290
	i32 356389973, ; 64: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 351
	i32 360082299, ; 65: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 66: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 67: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 68: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 69: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 380591099, ; 70: StrawberryShake.Resources => 0x16af5bfb => 239
	i32 385762202, ; 71: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 72: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 73: _Microsoft.Android.Resource.Designer => 0x17969339 => 410
	i32 400840227, ; 74: Nethereum.ABI.dll => 0x17e45623 => 216
	i32 403441872, ; 75: WindowsBase => 0x180c08d0 => 165
	i32 434938113, ; 76: PolkadotAssetHub.NetApi => 0x19eca101 => 234
	i32 435591531, ; 77: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 363
	i32 441335492, ; 78: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 273
	i32 442565967, ; 79: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 80: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 286
	i32 451504562, ; 81: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 82: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 83: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 84: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 85: System.dll => 0x1bff388e => 164
	i32 476646585, ; 86: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 288
	i32 486930444, ; 87: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 301
	i32 498788369, ; 88: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 89: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 350
	i32 503918385, ; 90: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 344
	i32 513247710, ; 91: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 203
	i32 526420162, ; 92: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 93: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 333
	i32 530272170, ; 94: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 95: Microsoft.Extensions.Logging => 0x20216150 => 197
	i32 540030774, ; 96: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 97: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 98: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 548916678, ; 99: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 188
	i32 549171840, ; 100: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 101: Jsr305Binding => 0x213954e7 => 326
	i32 569601784, ; 102: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 324
	i32 577335427, ; 103: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 104: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 358
	i32 593280183, ; 105: pl\Microsoft.VisualStudio.Threading.resources => 0x235cbcb7 => 378
	i32 601371474, ; 106: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 107: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 610295161, ; 108: Nerdbank.Streams => 0x24605d79 => 215
	i32 613668793, ; 109: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 110: Xamarin.AndroidX.CustomView => 0x2568904f => 278
	i32 627931235, ; 111: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 356
	i32 639843206, ; 112: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 284
	i32 643868501, ; 113: System.Net => 0x2660a755 => 81
	i32 662205335, ; 114: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 115: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 320
	i32 666292255, ; 116: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 265
	i32 672442732, ; 117: System.Collections.Concurrent => 0x2814a96c => 8
	i32 675370660, ; 118: NBitcoin.Secp256k1 => 0x284156a4 => 214
	i32 683518922, ; 119: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 120: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 338
	i32 690569205, ; 121: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 122: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 335
	i32 692668693, ; 123: Nethereum.Signer.EIP712.dll => 0x29494915 => 229
	i32 693804605, ; 124: System.Windows => 0x295a9e3d => 154
	i32 695788247, ; 125: ru\StreamJsonRpc.resources => 0x2978e2d7 => 406
	i32 695979303, ; 126: Nethereum.RLP.dll => 0x297bcd27 => 226
	i32 699345723, ; 127: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 128: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 330
	i32 700358131, ; 129: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 130: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 353
	i32 709557578, ; 131: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 341
	i32 711994786, ; 132: MessagePack.Annotations.dll => 0x2a702da2 => 186
	i32 712147191, ; 133: UniqueryPlus.Stick.dll => 0x2a7280f7 => 252
	i32 720511267, ; 134: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 334
	i32 722857257, ; 135: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 731701662, ; 136: Microsoft.Extensions.Options.ConfigurationExtensions => 0x2b9ce19e => 202
	i32 735137430, ; 137: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 138: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 139: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 255
	i32 759454413, ; 140: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 141: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 772964186, ; 142: Microsoft.NET.StringTools => 0x2e127f5a => 211
	i32 775507847, ; 143: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 144: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 362
	i32 789151979, ; 145: Microsoft.Extensions.Options => 0x2f0980eb => 201
	i32 790371945, ; 146: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 279
	i32 804715423, ; 147: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 148: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 293
	i32 812630446, ; 149: Serilog => 0x306fc1ae => 236
	i32 823281589, ; 150: System.Private.Uri.dll => 0x311247b5 => 86
	i32 828617472, ; 151: MessagePack => 0x3163b300 => 185
	i32 830298997, ; 152: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 153: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 154: System.Net.Quic => 0x31b69d60 => 71
	i32 843165924, ; 155: StrawberryShake.Transport.Http.dll => 0x3241b0e4 => 240
	i32 843511501, ; 156: Xamarin.AndroidX.Print => 0x3246f6cd => 306
	i32 853556215, ; 157: zh-Hant/StreamJsonRpc.resources.dll => 0x32e03bf7 => 409
	i32 856887035, ; 158: zh-Hant\StreamJsonRpc.resources => 0x33130efb => 409
	i32 857473228, ; 159: HotChocolate.Transport.Abstractions => 0x331c00cc => 180
	i32 873119928, ; 160: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 874617570, ; 161: it/Microsoft.VisualStudio.Validation.resources.dll => 0x34219ae2 => 388
	i32 877678880, ; 162: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 163: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 164: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 909876355, ; 165: StrawberryShake.Resources.dll => 0x363b9c83 => 239
	i32 911108515, ; 166: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 167: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 365
	i32 928116545, ; 168: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 329
	i32 943095258, ; 169: Microsoft.VisualStudio.Threading.dll => 0x38367dda => 212
	i32 944861948, ; 170: Substrate.KusamaAssetHub.NET.NetApiExt.dll => 0x385172fc => 244
	i32 951893052, ; 171: es/StreamJsonRpc.resources.dll => 0x38bcbc3c => 399
	i32 952186615, ; 172: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 954998135, ; 173: Unique.NetApi => 0x38ec1d77 => 249
	i32 955402788, ; 174: Newtonsoft.Json => 0x38f24a24 => 233
	i32 956575887, ; 175: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 334
	i32 956597963, ; 176: Nethereum.Accounts => 0x390486cb => 217
	i32 966729478, ; 177: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 327
	i32 967690846, ; 178: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 290
	i32 975236339, ; 179: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 180: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 181: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 182: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 183: System.Collections.dll => 0x3b2c715c => 12
	i32 993615995, ; 184: tr\StreamJsonRpc.resources => 0x3b39607b => 407
	i32 994442037, ; 185: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 186: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1001990533, ; 187: Nethereum.Merkle.Patricia.dll => 0x3bb92985 => 224
	i32 1012816738, ; 188: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 310
	i32 1019214401, ; 189: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 190: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 193
	i32 1029334545, ; 191: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 340
	i32 1031528504, ; 192: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 328
	i32 1035644815, ; 193: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 263
	i32 1036536393, ; 194: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 195: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1048992957, ; 196: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0x3e865cbd => 195
	i32 1052210849, ; 197: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 297
	i32 1067306892, ; 198: GoogleGson => 0x3f9dcf8c => 178
	i32 1082857460, ; 199: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 200: Xamarin.Kotlin.StdLib => 0x409e66d8 => 331
	i32 1090075282, ; 201: ko\Microsoft.VisualStudio.Validation.resources => 0x40f93a92 => 390
	i32 1094566626, ; 202: tr/Microsoft.VisualStudio.Threading.resources.dll => 0x413dc2e2 => 381
	i32 1098259244, ; 203: System => 0x41761b2c => 164
	i32 1098282069, ; 204: Nethereum.Signer.EIP712 => 0x41767455 => 229
	i32 1101083655, ; 205: zh-Hans/Microsoft.VisualStudio.Threading.resources.dll => 0x41a13407 => 382
	i32 1103730406, ; 206: de\Microsoft.VisualStudio.Validation.resources => 0x41c996e6 => 385
	i32 1117613133, ; 207: HotChocolate.Transport.Abstractions.dll => 0x429d6c4d => 180
	i32 1118262833, ; 208: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 353
	i32 1118595576, ; 209: Nethereum.JsonRpc.Client.dll => 0x42ac69f8 => 221
	i32 1121599056, ; 210: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 296
	i32 1127624469, ; 211: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 199
	i32 1129331915, ; 212: Chaos.NaCl.dll => 0x43503ccb => 175
	i32 1139481312, ; 213: tr\Microsoft.VisualStudio.Validation.resources => 0x43eb1ae0 => 394
	i32 1143030576, ; 214: Nethereum.JsonRpc.RpcClient => 0x44214330 => 222
	i32 1149092582, ; 215: Xamarin.AndroidX.Window => 0x447dc2e6 => 323
	i32 1160506222, ; 216: cs\Microsoft.VisualStudio.Validation.resources => 0x452beb6e => 384
	i32 1168523401, ; 217: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 359
	i32 1170634674, ; 218: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 219: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 319
	i32 1177596986, ; 220: es\Microsoft.VisualStudio.Threading.resources => 0x4630b43a => 373
	i32 1178241025, ; 221: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 304
	i32 1203215381, ; 222: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 357
	i32 1204270330, ; 223: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 265
	i32 1208641965, ; 224: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1214827643, ; 225: CommunityToolkit.Mvvm => 0x4868cc7b => 176
	i32 1215995024, ; 226: cs/Microsoft.VisualStudio.Validation.resources.dll => 0x487a9c90 => 384
	i32 1216028134, ; 227: Nethereum.BlockchainProcessing.dll => 0x487b1de6 => 218
	i32 1219128291, ; 228: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1220193633, ; 229: Microsoft.Net.Http.Headers => 0x48baad61 => 210
	i32 1234928153, ; 230: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 355
	i32 1243150071, ; 231: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 324
	i32 1250940849, ; 232: ru/StreamJsonRpc.resources.dll => 0x4a8fd7b1 => 406
	i32 1253011324, ; 233: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 234: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 339
	i32 1264511973, ; 235: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 314
	i32 1267360935, ; 236: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 318
	i32 1269851834, ; 237: BouncyCastle.Crypto => 0x4bb066ba => 235
	i32 1273260888, ; 238: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 270
	i32 1275534314, ; 239: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 335
	i32 1278448581, ; 240: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 262
	i32 1293217323, ; 241: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 281
	i32 1309188875, ; 242: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1312305870, ; 243: es/Microsoft.VisualStudio.Threading.resources.dll => 0x4e3832ce => 373
	i32 1322716291, ; 244: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 323
	i32 1324164729, ; 245: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 246: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1342308820, ; 247: pt-BR/StreamJsonRpc.resources.dll => 0x500201d4 => 405
	i32 1352224462, ; 248: MonkeyFinder => 0x50994ece => 0
	i32 1364015309, ; 249: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 250: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 369
	i32 1376866003, ; 251: Xamarin.AndroidX.SavedState => 0x52114ed3 => 310
	i32 1379779777, ; 252: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1385717816, ; 253: Microsoft.NET.StringTools.dll => 0x52986038 => 211
	i32 1402170036, ; 254: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 255: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 274
	i32 1408764838, ; 256: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1410207349, ; 257: UniqueryPlus.Speck.dll => 0x540e0e75 => 251
	i32 1411638395, ; 258: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 259: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1428839103, ; 260: HotChocolate.Transport.Http => 0x552a5abf => 181
	i32 1430672901, ; 261: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 337
	i32 1434145427, ; 262: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 263: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 327
	i32 1439761251, ; 264: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 265: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 266: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 267: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 268: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 269: es\Microsoft.Maui.Controls.resources => 0x57152abe => 343
	i32 1461234159, ; 270: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 271: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 272: System.IO.Compression.dll => 0x57261233 => 46
	i32 1468243690, ; 273: Chaos.NaCl => 0x57839eea => 175
	i32 1469204771, ; 274: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 264
	i32 1470490898, ; 275: Microsoft.Extensions.Primitives => 0x57a5e912 => 203
	i32 1479771757, ; 276: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 277: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 278: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 279: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 311
	i32 1493001747, ; 280: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 347
	i32 1505131794, ; 281: Microsoft.Extensions.Http => 0x59b67d12 => 196
	i32 1507875637, ; 282: Substrate.NET.Schnorrkel => 0x59e05b35 => 246
	i32 1514721132, ; 283: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 342
	i32 1519786090, ; 284: Nethereum.Util.Rest => 0x5a96186a => 231
	i32 1536373174, ; 285: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 286: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 287: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 288: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 289: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 362
	i32 1565862583, ; 290: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 291: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 292: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1578373161, ; 293: tr/Microsoft.VisualStudio.Validation.resources.dll => 0x5e141029 => 394
	i32 1580037396, ; 294: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 295: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 280
	i32 1583195853, ; 296: tr/StreamJsonRpc.resources.dll => 0x5e5da6cd => 407
	i32 1592978981, ; 297: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1594158234, ; 298: UniqueryPlus => 0x5f04ec9a => 250
	i32 1596753216, ; 299: BouncyCastle.Crypto.dll => 0x5f2c8540 => 235
	i32 1597949149, ; 300: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 328
	i32 1601112923, ; 301: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1603348681, ; 302: Extensions.Data.xxHash.core20 => 0x5f9128c9 => 177
	i32 1604827217, ; 303: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1615381622, ; 304: Nethereum.JsonRpc.Client => 0x6048c476 => 221
	i32 1618516317, ; 305: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 306: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 300
	i32 1622358360, ; 307: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1622869249, ; 308: it\Microsoft.VisualStudio.Threading.resources => 0x60bb0501 => 375
	i32 1624863272, ; 309: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 322
	i32 1625558452, ; 310: Serilog.dll => 0x60e40db4 => 236
	i32 1635184631, ; 311: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 284
	i32 1636296978, ; 312: pt-BR\StreamJsonRpc.resources => 0x6187e912 => 405
	i32 1636350590, ; 313: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 277
	i32 1639515021, ; 314: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 315: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 316: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 317: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 318: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 316
	i32 1658251792, ; 319: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 325
	i32 1670060433, ; 320: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 272
	i32 1675553242, ; 321: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 322: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 323: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 324: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1686249020, ; 325: ja\Microsoft.VisualStudio.Threading.resources => 0x64821e3c => 376
	i32 1691477237, ; 326: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1693533627, ; 327: Nethereum.ABI => 0x64f145bb => 216
	i32 1696967625, ; 328: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 329: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 332
	i32 1701541528, ; 330: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1703020140, ; 331: StrobeNet => 0x6582066c => 243
	i32 1716144236, ; 332: ja/Microsoft.VisualStudio.Threading.resources.dll => 0x664a486c => 376
	i32 1720223769, ; 333: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 293
	i32 1726116996, ; 334: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 335: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 336: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 268
	i32 1736233607, ; 337: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 360
	i32 1743415430, ; 338: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 338
	i32 1744735666, ; 339: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746115085, ; 340: System.IO.Pipelines.dll => 0x68139a0d => 248
	i32 1746316138, ; 341: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 342: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1753421227, ; 343: fr/StreamJsonRpc.resources.dll => 0x688315ab => 400
	i32 1758240030, ; 344: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 345: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 346: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 347: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 315
	i32 1770582343, ; 348: Microsoft.Extensions.Logging.dll => 0x6988f147 => 197
	i32 1776026572, ; 349: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 350: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 351: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1781491217, ; 352: NBitcoin.Secp256k1.dll => 0x6a2f6611 => 214
	i32 1782862114, ; 353: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 354
	i32 1788241197, ; 354: Xamarin.AndroidX.Fragment => 0x6a96652d => 286
	i32 1793755602, ; 355: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 346
	i32 1796167890, ; 356: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 188
	i32 1800955856, ; 357: ja/Microsoft.VisualStudio.Validation.resources.dll => 0x6b5867d0 => 389
	i32 1808609942, ; 358: Xamarin.AndroidX.Loader => 0x6bcd3296 => 300
	i32 1813058853, ; 359: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 331
	i32 1813201214, ; 360: Xamarin.Google.Android.Material => 0x6c13413e => 325
	i32 1816049294, ; 361: Nethereum.Hex.dll => 0x6c3eb68e => 220
	i32 1818569960, ; 362: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 305
	i32 1818787751, ; 363: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1819008552, ; 364: Microsoft.VisualStudio.Validation => 0x6c6bde28 => 213
	i32 1824175904, ; 365: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 366: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 367: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 198
	i32 1842015223, ; 368: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 366
	i32 1843358594, ; 369: KusamaAssetHub.NetApi => 0x6ddf6b82 => 184
	i32 1847515442, ; 370: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 255
	i32 1853025655, ; 371: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 363
	i32 1858542181, ; 372: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1868228169, ; 373: zh-Hans/StreamJsonRpc.resources.dll => 0x6f5ae649 => 408
	i32 1870277092, ; 374: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1872022336, ; 375: fr\Microsoft.VisualStudio.Threading.resources => 0x6f94cb40 => 374
	i32 1875089039, ; 376: fr/Microsoft.VisualStudio.Validation.resources.dll => 0x6fc3968f => 387
	i32 1875935024, ; 377: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 345
	i32 1879696579, ; 378: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1880396002, ; 379: Nethereum.Hex => 0x701490e2 => 220
	i32 1883079902, ; 380: MessagePack.dll => 0x703d84de => 185
	i32 1885316902, ; 381: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 266
	i32 1888955245, ; 382: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 383: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1896498791, ; 384: es\StreamJsonRpc.resources => 0x710a4667 => 399
	i32 1898237753, ; 385: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 386: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 387: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 388: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 389: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 390: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 312
	i32 1968388702, ; 391: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 189
	i32 1975995913, ; 392: Nethereum.Util => 0x75c74e09 => 230
	i32 1983156543, ; 393: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 332
	i32 1985761444, ; 394: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 257
	i32 2003115576, ; 395: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 342
	i32 2003287815, ; 396: HotChocolate.Transport.Http.dll => 0x7767bf07 => 181
	i32 2005448994, ; 397: de/Microsoft.VisualStudio.Threading.resources.dll => 0x7788b922 => 372
	i32 2011961780, ; 398: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 399: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 297
	i32 2025202353, ; 400: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 337
	i32 2026823783, ; 401: Nethereum.KeyStore => 0x78cee067 => 223
	i32 2031763787, ; 402: Xamarin.Android.Glide => 0x791a414b => 254
	i32 2037622605, ; 403: zh-Hant/Microsoft.VisualStudio.Validation.resources.dll => 0x7973a74d => 396
	i32 2045470958, ; 404: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 405: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 191
	i32 2053487814, ; 406: Nethereum.RPC.dll => 0x7a65bcc6 => 227
	i32 2055257422, ; 407: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 292
	i32 2060060697, ; 408: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 409: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 341
	i32 2070888862, ; 410: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 411: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 412: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2111575337, ; 413: Nethereum.Signer => 0x7ddc1529 => 228
	i32 2127167465, ; 414: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 415: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 416: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 417: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2155551884, ; 418: ja/StreamJsonRpc.resources.dll => 0x807b1c8c => 402
	i32 2159891885, ; 419: Microsoft.Maui => 0x80bd55ad => 207
	i32 2169148018, ; 420: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 349
	i32 2181898931, ; 421: Microsoft.Extensions.Options.dll => 0x820d22b3 => 201
	i32 2190664374, ; 422: Unique.NetApi.dll => 0x8292e2b6 => 249
	i32 2192057212, ; 423: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 198
	i32 2193016926, ; 424: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2200593974, ; 425: Substrate.PolkadotAssetHub.NET.NetApiExt.dll => 0x832a6636 => 247
	i32 2201107256, ; 426: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 336
	i32 2201231467, ; 427: System.Net.Http => 0x8334206b => 64
	i32 2204417087, ; 428: Microsoft.Extensions.ObjectPool => 0x8364bc3f => 200
	i32 2207618523, ; 429: it\Microsoft.Maui.Controls.resources => 0x839595db => 351
	i32 2210888023, ; 430: ja\StreamJsonRpc.resources => 0x83c77957 => 402
	i32 2217644978, ; 431: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 319
	i32 2222056684, ; 432: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2242626471, ; 433: StrobeNet.dll => 0x85abc3a7 => 243
	i32 2244775296, ; 434: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 301
	i32 2251752529, ; 435: ko/Microsoft.VisualStudio.Validation.resources.dll => 0x86370451 => 390
	i32 2252106437, ; 436: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 437: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 438: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 439: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 190
	i32 2267999099, ; 440: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 256
	i32 2270573516, ; 441: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 345
	i32 2279755925, ; 442: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 308
	i32 2283279570, ; 443: SerilogTraceListener => 0x881814d2 => 237
	i32 2293034957, ; 444: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 445: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 446: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 447: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 355
	i32 2305521784, ; 448: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2309813621, ; 449: zh-Hans\Microsoft.VisualStudio.Validation.resources => 0x89acf575 => 395
	i32 2314660792, ; 450: es/Microsoft.VisualStudio.Validation.resources.dll => 0x89f6ebb8 => 386
	i32 2315684594, ; 451: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 260
	i32 2320631194, ; 452: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2333470185, ; 453: StrawberryShake.Transport.Http => 0x8b15ede9 => 240
	i32 2340441535, ; 454: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2341020837, ; 455: fr/Microsoft.VisualStudio.Threading.resources.dll => 0x8b8924a5 => 374
	i32 2344264397, ; 456: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 457: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 458: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 459: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 189
	i32 2378619854, ; 460: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2380813784, ; 461: Microsoft.VisualStudio.Threading => 0x8de855d8 => 212
	i32 2383496789, ; 462: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 463: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 350
	i32 2401565422, ; 464: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 465: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 283
	i32 2421380589, ; 466: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 467: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 270
	i32 2426324410, ; 468: Nethereum.Contracts.dll => 0x909ec5ba => 219
	i32 2427813419, ; 469: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 347
	i32 2435356389, ; 470: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 471: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2440199119, ; 472: pl/Microsoft.VisualStudio.Validation.resources.dll => 0x91727bcf => 391
	i32 2454642406, ; 473: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 474: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 475: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 476: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 273
	i32 2471841756, ; 477: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 478: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 479: Microsoft.Maui.Controls => 0x93dba8a1 => 205
	i32 2483903535, ; 480: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 481: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 482: System.AppContext.dll => 0x94798bc5 => 6
	i32 2494811587, ; 483: Nethereum.Model.dll => 0x94b3cdc3 => 225
	i32 2498026947, ; 484: HotChocolate.Utilities => 0x94e4ddc3 => 182
	i32 2501346920, ; 485: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 486: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 295
	i32 2511042968, ; 487: Substrate.PolkadotAssetHub.NET.NetApiExt => 0x95ab7998 => 247
	i32 2522472828, ; 488: Xamarin.Android.Glide.dll => 0x9659e17c => 254
	i32 2534805337, ; 489: UniqueryPlus.UniqueSubquery => 0x97160f59 => 253
	i32 2538310050, ; 490: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2544796144, ; 491: Blake2Core => 0x97ae81f0 => 174
	i32 2550873716, ; 492: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 348
	i32 2558021222, ; 493: Nethereum.RLP => 0x98784e66 => 226
	i32 2562349572, ; 494: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 495: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 496: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 296
	i32 2581819634, ; 497: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 318
	i32 2585220780, ; 498: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 499: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 500: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 501: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 357
	i32 2605712449, ; 502: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 336
	i32 2615233544, ; 503: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 287
	i32 2616218305, ; 504: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 199
	i32 2617129537, ; 505: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 506: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 507: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 277
	i32 2621683589, ; 508: Nethereum.Model => 0x9c43b785 => 225
	i32 2624644809, ; 509: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 282
	i32 2626831493, ; 510: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 352
	i32 2627185994, ; 511: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 512: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2630453997, ; 513: ru\Microsoft.VisualStudio.Threading.resources => 0x9cc98aed => 380
	i32 2633051222, ; 514: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 291
	i32 2642913542, ; 515: StrawberryShake.Core.dll => 0x9d87a906 => 238
	i32 2663391936, ; 516: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 256
	i32 2663698177, ; 517: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 518: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 519: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 520: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 521: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 522: System.IO.dll => 0xa090e36a => 57
	i32 2696933262, ; 523: Nethereum.BlockchainProcessing => 0xa0bfef8e => 218
	i32 2701096212, ; 524: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 316
	i32 2715334215, ; 525: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 526: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 527: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 528: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2730076542, ; 529: Extensions.Data.xxHash.core20.dll => 0xa2b9a97e => 177
	i32 2732626843, ; 530: Xamarin.AndroidX.Activity => 0xa2e0939b => 258
	i32 2735172069, ; 531: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 532: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 264
	i32 2740948882, ; 533: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2745835758, ; 534: pt-BR\Microsoft.VisualStudio.Threading.resources => 0xa3aa20ee => 379
	i32 2748088231, ; 535: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2751457216, ; 536: Nethereum.KeyStore.dll => 0xa3ffe7c0 => 223
	i32 2752995522, ; 537: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 358
	i32 2758225723, ; 538: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 206
	i32 2764765095, ; 539: Microsoft.Maui.dll => 0xa4caf7a7 => 207
	i32 2765824710, ; 540: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 541: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 330
	i32 2778768386, ; 542: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 321
	i32 2779977773, ; 543: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 309
	i32 2785988530, ; 544: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 364
	i32 2788224221, ; 545: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 287
	i32 2801831435, ; 546: Microsoft.Maui.Graphics => 0xa7008e0b => 209
	i32 2803228030, ; 547: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 548: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 343
	i32 2810250172, ; 549: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 274
	i32 2819470561, ; 550: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 551: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 552: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 309
	i32 2824502124, ; 553: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 554: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 356
	i32 2838993487, ; 555: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 298
	i32 2849599387, ; 556: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 557: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 321
	i32 2855708567, ; 558: Xamarin.AndroidX.Transition => 0xaa36a797 => 317
	i32 2861098320, ; 559: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 560: Microsoft.Maui.Essentials => 0xaa8a4878 => 208
	i32 2862626926, ; 561: ko\Microsoft.VisualStudio.Threading.resources => 0xaaa0386e => 377
	i32 2864665604, ; 562: Nethereum.Web3 => 0xaabf5404 => 232
	i32 2870099610, ; 563: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 259
	i32 2875164099, ; 564: Jsr305Binding.dll => 0xab5f85c3 => 326
	i32 2875220617, ; 565: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 566: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 285
	i32 2887636118, ; 567: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 568: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 569: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 570: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 571: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 572: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 573: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 322
	i32 2919462931, ; 574: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 575: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 261
	i32 2936416060, ; 576: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 577: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 578: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 579: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 580: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2971004615, ; 581: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 0xb115eec7 => 202
	i32 2972252294, ; 582: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2973989018, ; 583: StrawberryShake.Core => 0xb143789a => 238
	i32 2978675010, ; 584: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 281
	i32 2987532451, ; 585: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 312
	i32 2996846495, ; 586: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 294
	i32 2999913531, ; 587: de\StreamJsonRpc.resources => 0xb2cf0c3b => 398
	i32 3016983068, ; 588: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 314
	i32 3020703001, ; 589: Microsoft.Extensions.Diagnostics => 0xb40c4519 => 194
	i32 3023353419, ; 590: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 591: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 289
	i32 3038032645, ; 592: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 410
	i32 3056245963, ; 593: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 311
	i32 3057000569, ; 594: Nethereum.Signer.dll => 0xb6362079 => 228
	i32 3057625584, ; 595: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 302
	i32 3059408633, ; 596: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 597: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3068993637, ; 598: pl/StreamJsonRpc.resources.dll => 0xb6ed2065 => 404
	i32 3075834255, ; 599: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 600: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 349
	i32 3090735792, ; 601: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 602: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 603: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 604: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 605: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 606: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3131482382, ; 607: it\Microsoft.VisualStudio.Validation.resources => 0xbaa6a10e => 388
	i32 3132293585, ; 608: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 609: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 610: GoogleGson.dll => 0xbba64c02 => 178
	i32 3159123045, ; 611: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 612: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3168749268, ; 613: pt-BR\Microsoft.VisualStudio.Validation.resources => 0xbcdf46d4 => 392
	i32 3178803400, ; 614: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 303
	i32 3183383574, ; 615: fr\StreamJsonRpc.resources => 0xbdbe9416 => 400
	i32 3186425510, ; 616: pt-BR/Microsoft.VisualStudio.Validation.resources.dll => 0xbdecfea6 => 392
	i32 3192346100, ; 617: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 618: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 619: System.Data.dll => 0xbefef58f => 24
	i32 3205092101, ; 620: cs\Microsoft.VisualStudio.Threading.resources => 0xbf09d305 => 371
	i32 3206218667, ; 621: fr\Microsoft.VisualStudio.Validation.resources => 0xbf1b03ab => 387
	i32 3209718065, ; 622: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 623: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 280
	i32 3220365878, ; 624: System.Threading => 0xbff2e236 => 148
	i32 3222350070, ; 625: MessagePack.Annotations => 0xc01128f6 => 186
	i32 3226221578, ; 626: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3246422272, ; 627: Nerdbank.Streams.dll => 0xc1807900 => 215
	i32 3251039220, ; 628: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258220123, ; 629: HotChocolate.Language.SyntaxTree.dll => 0xc2347e5b => 179
	i32 3258312781, ; 630: Xamarin.AndroidX.CardView => 0xc235e84d => 268
	i32 3265493905, ; 631: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 632: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 633: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 634: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 635: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3282291323, ; 636: SerilogTraceListener.dll => 0xc3a3ca7b => 237
	i32 3286968555, ; 637: Nethereum.JsonRpc.RpcClient.dll => 0xc3eb28eb => 222
	i32 3290767353, ; 638: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 639: System.Text.Encoding => 0xc4a8494a => 135
	i32 3300764913, ; 640: Microsoft.AspNetCore.WebUtilities => 0xc4bdacf1 => 187
	i32 3303498502, ; 641: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 642: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 344
	i32 3316684772, ; 643: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 644: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 278
	i32 3317144872, ; 645: System.Data => 0xc5b79d28 => 24
	i32 3322415921, ; 646: cs/StreamJsonRpc.resources.dll => 0xc6080b31 => 397
	i32 3340431453, ; 647: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 266
	i32 3345895724, ; 648: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 307
	i32 3346324047, ; 649: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 304
	i32 3351212354, ; 650: zh-Hans/Microsoft.VisualStudio.Validation.resources.dll => 0xc7bf7142 => 395
	i32 3357674450, ; 651: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 361
	i32 3358260929, ; 652: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 653: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 259
	i32 3362522851, ; 654: Xamarin.AndroidX.Core => 0xc86c06e3 => 275
	i32 3366347497, ; 655: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 656: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 308
	i32 3381016424, ; 657: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 340
	i32 3384198244, ; 658: Nethereum.Web3.dll => 0xc9b6c464 => 232
	i32 3388609052, ; 659: ru/Microsoft.VisualStudio.Threading.resources.dll => 0xc9fa121c => 380
	i32 3395150330, ; 660: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 661: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 662: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 279
	i32 3412783194, ; 663: zh-Hant\Microsoft.VisualStudio.Threading.resources => 0xcb6af05a => 383
	i32 3414316511, ; 664: zh-Hant\Microsoft.VisualStudio.Validation.resources => 0xcb8255df => 396
	i32 3421170118, ; 665: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 191
	i32 3428513518, ; 666: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 192
	i32 3429136800, ; 667: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 668: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 669: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 282
	i32 3445260447, ; 670: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 671: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 204
	i32 3458628612, ; 672: ko\StreamJsonRpc.resources => 0xce267c04 => 403
	i32 3463511458, ; 673: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 348
	i32 3466002048, ; 674: zh-Hans\StreamJsonRpc.resources => 0xce96fe80 => 408
	i32 3471940407, ; 675: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 676: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 677: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 361
	i32 3484440000, ; 678: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 360
	i32 3485117614, ; 679: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 680: System.Transactions => 0xcfd0c798 => 150
	i32 3489830355, ; 681: ADRaffy.ENSNormalize.dll => 0xd00295d3 => 173
	i32 3493954962, ; 682: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 271
	i32 3507543831, ; 683: Substrate.NetApi.dll => 0xd110df17 => 245
	i32 3509114376, ; 684: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 685: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 686: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 687: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3549964303, ; 688: Nethereum.Contracts => 0xd398280f => 219
	i32 3560100363, ; 689: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 690: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 691: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 368
	i32 3596117489, ; 692: Blake2Core.dll => 0xd65865f1 => 174
	i32 3597029428, ; 693: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 257
	i32 3598340787, ; 694: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3605062809, ; 695: HotChocolate.Utilities.dll => 0xd6e0e499 => 182
	i32 3608519521, ; 696: System.Linq.dll => 0xd715a361 => 61
	i32 3616219139, ; 697: cs/Microsoft.VisualStudio.Threading.resources.dll => 0xd78b2003 => 371
	i32 3624195450, ; 698: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 699: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 306
	i32 3633644679, ; 700: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 261
	i32 3638274909, ; 701: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 702: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 292
	i32 3643446276, ; 703: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 365
	i32 3643854240, ; 704: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 303
	i32 3645089577, ; 705: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3646188081, ; 706: Nethereum.Merkle.Patricia => 0xd9546a31 => 224
	i32 3657292374, ; 707: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 190
	i32 3659922679, ; 708: StrawberryShake.Transport.WebSockets => 0xda25fcf7 => 241
	i32 3660523487, ; 709: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 710: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3673720627, ; 711: MonkeyFinder.dll => 0xdaf88733 => 0
	i32 3682565725, ; 712: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 267
	i32 3684561358, ; 713: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 271
	i32 3685991093, ; 714: ko/Microsoft.VisualStudio.Threading.resources.dll => 0xdbb3c2b5 => 377
	i32 3696191935, ; 715: Nethereum.RPC => 0xdc4f69bf => 227
	i32 3697841164, ; 716: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 370
	i32 3700866549, ; 717: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706356307, ; 718: UniqueryPlus.dll => 0xdcea8253 => 250
	i32 3706696989, ; 719: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 276
	i32 3716563718, ; 720: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718161456, ; 721: zh-Hans\Microsoft.VisualStudio.Threading.resources => 0xdd9ea430 => 382
	i32 3718780102, ; 722: Xamarin.AndroidX.Annotation => 0xdda814c6 => 260
	i32 3724971120, ; 723: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 302
	i32 3732100267, ; 724: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 725: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 726: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 727: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3751929190, ; 728: Substrate.NetApi => 0xdfa1e566 => 245
	i32 3757354629, ; 729: pt-BR/Microsoft.VisualStudio.Threading.resources.dll => 0xdff4ae85 => 379
	i32 3765508441, ; 730: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 200
	i32 3786282454, ; 731: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 269
	i32 3792276235, ; 732: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 733: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 204
	i32 3801484056, ; 734: PolkadotAssetHub.NetApi.dll => 0xe2960b18 => 234
	i32 3802395368, ; 735: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 736: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 737: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 738: System.Numerics.dll => 0xe4436460 => 83
	i32 3836710093, ; 739: Substrate.NET.Schnorrkel.dll => 0xe4af8ccd => 246
	i32 3837382201, ; 740: pl\StreamJsonRpc.resources => 0xe4b9ce39 => 404
	i32 3841636137, ; 741: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 193
	i32 3844307129, ; 742: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3846603715, ; 743: Substrate.KusamaAssetHub.NET.NetApiExt => 0xe54683c3 => 244
	i32 3849253459, ; 744: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3856601729, ; 745: it/Microsoft.VisualStudio.Threading.resources.dll => 0xe5df1281 => 375
	i32 3870214043, ; 746: Nethereum.Util.dll => 0xe6aec79b => 230
	i32 3870376305, ; 747: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 748: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 749: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3881281414, ; 750: StreamJsonRpc.dll => 0xe757a786 => 242
	i32 3885497537, ; 751: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 752: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 317
	i32 3888767677, ; 753: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 307
	i32 3889960447, ; 754: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 369
	i32 3896106733, ; 755: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 756: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 275
	i32 3900014485, ; 757: UniqueryPlus.UniqueSubquery.dll => 0xe8757f95 => 253
	i32 3900914623, ; 758: ja\Microsoft.VisualStudio.Validation.resources => 0xe8833bbf => 389
	i32 3901907137, ; 759: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3917846462, ; 760: ru\Microsoft.VisualStudio.Validation.resources => 0xe98597be => 393
	i32 3920810846, ; 761: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 762: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 320
	i32 3928044579, ; 763: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 764: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 765: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 305
	i32 3945713374, ; 766: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 767: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 768: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 263
	i32 3958838348, ; 769: ru/Microsoft.VisualStudio.Validation.resources.dll => 0xebf7144c => 393
	i32 3959773229, ; 770: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 294
	i32 3966200307, ; 771: Nethereum.Accounts.dll => 0xec6769f3 => 217
	i32 3980434154, ; 772: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 364
	i32 3987592930, ; 773: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 346
	i32 4003436829, ; 774: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4005048620, ; 775: StrawberryShake.Transport.WebSockets.dll => 0xeeb8312c => 241
	i32 4015948917, ; 776: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 262
	i32 4018968191, ; 777: UniqueryPlus.Speck => 0xef8c967f => 251
	i32 4023392905, ; 778: System.IO.Pipelines => 0xefd01a89 => 248
	i32 4025784931, ; 779: System.Memory => 0xeff49a63 => 62
	i32 4043357644, ; 780: ko/StreamJsonRpc.resources.dll => 0xf100bdcc => 403
	i32 4044155772, ; 781: Microsoft.Net.Http.Headers.dll => 0xf10ceb7c => 210
	i32 4046471985, ; 782: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 206
	i32 4054681211, ; 783: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4061034150, ; 784: pl\Microsoft.VisualStudio.Validation.resources => 0xf20e76a6 => 391
	i32 4068434129, ; 785: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 786: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 787: Microsoft.Maui.Essentials.dll => 0xf40add04 => 208
	i32 4099507663, ; 788: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 789: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 790: Xamarin.AndroidX.Emoji2 => 0xf479582c => 283
	i32 4102112229, ; 791: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 359
	i32 4103522839, ; 792: Nethereum.Util.Rest.dll => 0xf496ca17 => 231
	i32 4109841154, ; 793: KusamaAssetHub.NetApi.dll => 0xf4f73302 => 184
	i32 4122660923, ; 794: Microsoft.VisualStudio.Validation.dll => 0xf5bad03b => 213
	i32 4125707920, ; 795: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 354
	i32 4126470640, ; 796: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 192
	i32 4127667938, ; 797: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 798: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 799: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 800: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 366
	i32 4151237749, ; 801: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 802: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 803: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 804: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 805: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 806: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 299
	i32 4185676441, ; 807: System.Security => 0xf97c5a99 => 130
	i32 4187891719, ; 808: StreamJsonRpc => 0xf99e2807 => 242
	i32 4196529839, ; 809: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 810: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4217775174, ; 811: UniqueryPlus.Stick => 0xfb662446 => 252
	i32 4233285525, ; 812: de\Microsoft.VisualStudio.Threading.resources => 0xfc52cf95 => 372
	i32 4256097574, ; 813: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 276
	i32 4258378803, ; 814: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 298
	i32 4260525087, ; 815: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 816: Microsoft.Maui.Controls.dll => 0xfea12dee => 205
	i32 4274623895, ; 817: CommunityToolkit.Mvvm.dll => 0xfec99597 => 176
	i32 4274976490, ; 818: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4286045937, ; 819: IndexRange => 0xff77def1 => 183
	i32 4292120959, ; 820: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 299
	i32 4294763496 ; 821: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 285
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [822 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 385, ; 3
	i32 295, ; 4
	i32 329, ; 5
	i32 48, ; 6
	i32 401, ; 7
	i32 233, ; 8
	i32 80, ; 9
	i32 145, ; 10
	i32 30, ; 11
	i32 370, ; 12
	i32 124, ; 13
	i32 209, ; 14
	i32 102, ; 15
	i32 195, ; 16
	i32 313, ; 17
	i32 397, ; 18
	i32 173, ; 19
	i32 107, ; 20
	i32 386, ; 21
	i32 313, ; 22
	i32 139, ; 23
	i32 333, ; 24
	i32 77, ; 25
	i32 124, ; 26
	i32 383, ; 27
	i32 401, ; 28
	i32 13, ; 29
	i32 269, ; 30
	i32 132, ; 31
	i32 187, ; 32
	i32 183, ; 33
	i32 315, ; 34
	i32 151, ; 35
	i32 367, ; 36
	i32 368, ; 37
	i32 18, ; 38
	i32 267, ; 39
	i32 26, ; 40
	i32 194, ; 41
	i32 289, ; 42
	i32 1, ; 43
	i32 59, ; 44
	i32 42, ; 45
	i32 91, ; 46
	i32 272, ; 47
	i32 378, ; 48
	i32 147, ; 49
	i32 291, ; 50
	i32 288, ; 51
	i32 339, ; 52
	i32 54, ; 53
	i32 196, ; 54
	i32 179, ; 55
	i32 69, ; 56
	i32 398, ; 57
	i32 367, ; 58
	i32 258, ; 59
	i32 83, ; 60
	i32 381, ; 61
	i32 352, ; 62
	i32 290, ; 63
	i32 351, ; 64
	i32 131, ; 65
	i32 55, ; 66
	i32 149, ; 67
	i32 74, ; 68
	i32 145, ; 69
	i32 239, ; 70
	i32 62, ; 71
	i32 146, ; 72
	i32 410, ; 73
	i32 216, ; 74
	i32 165, ; 75
	i32 234, ; 76
	i32 363, ; 77
	i32 273, ; 78
	i32 12, ; 79
	i32 286, ; 80
	i32 125, ; 81
	i32 152, ; 82
	i32 113, ; 83
	i32 166, ; 84
	i32 164, ; 85
	i32 288, ; 86
	i32 301, ; 87
	i32 84, ; 88
	i32 350, ; 89
	i32 344, ; 90
	i32 203, ; 91
	i32 150, ; 92
	i32 333, ; 93
	i32 60, ; 94
	i32 197, ; 95
	i32 51, ; 96
	i32 103, ; 97
	i32 114, ; 98
	i32 188, ; 99
	i32 40, ; 100
	i32 326, ; 101
	i32 324, ; 102
	i32 120, ; 103
	i32 358, ; 104
	i32 378, ; 105
	i32 52, ; 106
	i32 44, ; 107
	i32 215, ; 108
	i32 119, ; 109
	i32 278, ; 110
	i32 356, ; 111
	i32 284, ; 112
	i32 81, ; 113
	i32 136, ; 114
	i32 320, ; 115
	i32 265, ; 116
	i32 8, ; 117
	i32 214, ; 118
	i32 73, ; 119
	i32 338, ; 120
	i32 155, ; 121
	i32 335, ; 122
	i32 229, ; 123
	i32 154, ; 124
	i32 406, ; 125
	i32 226, ; 126
	i32 92, ; 127
	i32 330, ; 128
	i32 45, ; 129
	i32 353, ; 130
	i32 341, ; 131
	i32 186, ; 132
	i32 252, ; 133
	i32 334, ; 134
	i32 109, ; 135
	i32 202, ; 136
	i32 129, ; 137
	i32 25, ; 138
	i32 255, ; 139
	i32 72, ; 140
	i32 55, ; 141
	i32 211, ; 142
	i32 46, ; 143
	i32 362, ; 144
	i32 201, ; 145
	i32 279, ; 146
	i32 22, ; 147
	i32 293, ; 148
	i32 236, ; 149
	i32 86, ; 150
	i32 185, ; 151
	i32 43, ; 152
	i32 160, ; 153
	i32 71, ; 154
	i32 240, ; 155
	i32 306, ; 156
	i32 409, ; 157
	i32 409, ; 158
	i32 180, ; 159
	i32 3, ; 160
	i32 388, ; 161
	i32 42, ; 162
	i32 63, ; 163
	i32 16, ; 164
	i32 239, ; 165
	i32 53, ; 166
	i32 365, ; 167
	i32 329, ; 168
	i32 212, ; 169
	i32 244, ; 170
	i32 399, ; 171
	i32 105, ; 172
	i32 249, ; 173
	i32 233, ; 174
	i32 334, ; 175
	i32 217, ; 176
	i32 327, ; 177
	i32 290, ; 178
	i32 34, ; 179
	i32 158, ; 180
	i32 85, ; 181
	i32 32, ; 182
	i32 12, ; 183
	i32 407, ; 184
	i32 51, ; 185
	i32 56, ; 186
	i32 224, ; 187
	i32 310, ; 188
	i32 36, ; 189
	i32 193, ; 190
	i32 340, ; 191
	i32 328, ; 192
	i32 263, ; 193
	i32 35, ; 194
	i32 58, ; 195
	i32 195, ; 196
	i32 297, ; 197
	i32 178, ; 198
	i32 17, ; 199
	i32 331, ; 200
	i32 390, ; 201
	i32 381, ; 202
	i32 164, ; 203
	i32 229, ; 204
	i32 382, ; 205
	i32 385, ; 206
	i32 180, ; 207
	i32 353, ; 208
	i32 221, ; 209
	i32 296, ; 210
	i32 199, ; 211
	i32 175, ; 212
	i32 394, ; 213
	i32 222, ; 214
	i32 323, ; 215
	i32 384, ; 216
	i32 359, ; 217
	i32 153, ; 218
	i32 319, ; 219
	i32 373, ; 220
	i32 304, ; 221
	i32 357, ; 222
	i32 265, ; 223
	i32 29, ; 224
	i32 176, ; 225
	i32 384, ; 226
	i32 218, ; 227
	i32 52, ; 228
	i32 210, ; 229
	i32 355, ; 230
	i32 324, ; 231
	i32 406, ; 232
	i32 5, ; 233
	i32 339, ; 234
	i32 314, ; 235
	i32 318, ; 236
	i32 235, ; 237
	i32 270, ; 238
	i32 335, ; 239
	i32 262, ; 240
	i32 281, ; 241
	i32 85, ; 242
	i32 373, ; 243
	i32 323, ; 244
	i32 61, ; 245
	i32 112, ; 246
	i32 405, ; 247
	i32 0, ; 248
	i32 57, ; 249
	i32 369, ; 250
	i32 310, ; 251
	i32 99, ; 252
	i32 211, ; 253
	i32 19, ; 254
	i32 274, ; 255
	i32 111, ; 256
	i32 251, ; 257
	i32 101, ; 258
	i32 102, ; 259
	i32 181, ; 260
	i32 337, ; 261
	i32 104, ; 262
	i32 327, ; 263
	i32 71, ; 264
	i32 38, ; 265
	i32 32, ; 266
	i32 103, ; 267
	i32 73, ; 268
	i32 343, ; 269
	i32 9, ; 270
	i32 123, ; 271
	i32 46, ; 272
	i32 175, ; 273
	i32 264, ; 274
	i32 203, ; 275
	i32 9, ; 276
	i32 43, ; 277
	i32 4, ; 278
	i32 311, ; 279
	i32 347, ; 280
	i32 196, ; 281
	i32 246, ; 282
	i32 342, ; 283
	i32 231, ; 284
	i32 31, ; 285
	i32 138, ; 286
	i32 92, ; 287
	i32 93, ; 288
	i32 362, ; 289
	i32 49, ; 290
	i32 141, ; 291
	i32 112, ; 292
	i32 394, ; 293
	i32 140, ; 294
	i32 280, ; 295
	i32 407, ; 296
	i32 115, ; 297
	i32 250, ; 298
	i32 235, ; 299
	i32 328, ; 300
	i32 157, ; 301
	i32 177, ; 302
	i32 76, ; 303
	i32 221, ; 304
	i32 79, ; 305
	i32 300, ; 306
	i32 37, ; 307
	i32 375, ; 308
	i32 322, ; 309
	i32 236, ; 310
	i32 284, ; 311
	i32 405, ; 312
	i32 277, ; 313
	i32 64, ; 314
	i32 138, ; 315
	i32 15, ; 316
	i32 116, ; 317
	i32 316, ; 318
	i32 325, ; 319
	i32 272, ; 320
	i32 48, ; 321
	i32 70, ; 322
	i32 80, ; 323
	i32 126, ; 324
	i32 376, ; 325
	i32 94, ; 326
	i32 216, ; 327
	i32 121, ; 328
	i32 332, ; 329
	i32 26, ; 330
	i32 243, ; 331
	i32 376, ; 332
	i32 293, ; 333
	i32 97, ; 334
	i32 28, ; 335
	i32 268, ; 336
	i32 360, ; 337
	i32 338, ; 338
	i32 149, ; 339
	i32 248, ; 340
	i32 169, ; 341
	i32 4, ; 342
	i32 400, ; 343
	i32 98, ; 344
	i32 33, ; 345
	i32 93, ; 346
	i32 315, ; 347
	i32 197, ; 348
	i32 21, ; 349
	i32 41, ; 350
	i32 170, ; 351
	i32 214, ; 352
	i32 354, ; 353
	i32 286, ; 354
	i32 346, ; 355
	i32 188, ; 356
	i32 389, ; 357
	i32 300, ; 358
	i32 331, ; 359
	i32 325, ; 360
	i32 220, ; 361
	i32 305, ; 362
	i32 2, ; 363
	i32 213, ; 364
	i32 134, ; 365
	i32 111, ; 366
	i32 198, ; 367
	i32 366, ; 368
	i32 184, ; 369
	i32 255, ; 370
	i32 363, ; 371
	i32 58, ; 372
	i32 408, ; 373
	i32 95, ; 374
	i32 374, ; 375
	i32 387, ; 376
	i32 345, ; 377
	i32 39, ; 378
	i32 220, ; 379
	i32 185, ; 380
	i32 266, ; 381
	i32 25, ; 382
	i32 94, ; 383
	i32 399, ; 384
	i32 89, ; 385
	i32 99, ; 386
	i32 10, ; 387
	i32 87, ; 388
	i32 100, ; 389
	i32 312, ; 390
	i32 189, ; 391
	i32 230, ; 392
	i32 332, ; 393
	i32 257, ; 394
	i32 342, ; 395
	i32 181, ; 396
	i32 372, ; 397
	i32 7, ; 398
	i32 297, ; 399
	i32 337, ; 400
	i32 223, ; 401
	i32 254, ; 402
	i32 396, ; 403
	i32 88, ; 404
	i32 191, ; 405
	i32 227, ; 406
	i32 292, ; 407
	i32 154, ; 408
	i32 341, ; 409
	i32 33, ; 410
	i32 116, ; 411
	i32 82, ; 412
	i32 228, ; 413
	i32 20, ; 414
	i32 11, ; 415
	i32 162, ; 416
	i32 3, ; 417
	i32 402, ; 418
	i32 207, ; 419
	i32 349, ; 420
	i32 201, ; 421
	i32 249, ; 422
	i32 198, ; 423
	i32 84, ; 424
	i32 247, ; 425
	i32 336, ; 426
	i32 64, ; 427
	i32 200, ; 428
	i32 351, ; 429
	i32 402, ; 430
	i32 319, ; 431
	i32 143, ; 432
	i32 243, ; 433
	i32 301, ; 434
	i32 390, ; 435
	i32 157, ; 436
	i32 41, ; 437
	i32 117, ; 438
	i32 190, ; 439
	i32 256, ; 440
	i32 345, ; 441
	i32 308, ; 442
	i32 237, ; 443
	i32 131, ; 444
	i32 75, ; 445
	i32 66, ; 446
	i32 355, ; 447
	i32 172, ; 448
	i32 395, ; 449
	i32 386, ; 450
	i32 260, ; 451
	i32 143, ; 452
	i32 240, ; 453
	i32 106, ; 454
	i32 374, ; 455
	i32 151, ; 456
	i32 70, ; 457
	i32 156, ; 458
	i32 189, ; 459
	i32 121, ; 460
	i32 212, ; 461
	i32 127, ; 462
	i32 350, ; 463
	i32 152, ; 464
	i32 283, ; 465
	i32 141, ; 466
	i32 270, ; 467
	i32 219, ; 468
	i32 347, ; 469
	i32 20, ; 470
	i32 14, ; 471
	i32 391, ; 472
	i32 135, ; 473
	i32 75, ; 474
	i32 59, ; 475
	i32 273, ; 476
	i32 167, ; 477
	i32 168, ; 478
	i32 205, ; 479
	i32 15, ; 480
	i32 74, ; 481
	i32 6, ; 482
	i32 225, ; 483
	i32 182, ; 484
	i32 23, ; 485
	i32 295, ; 486
	i32 247, ; 487
	i32 254, ; 488
	i32 253, ; 489
	i32 91, ; 490
	i32 174, ; 491
	i32 348, ; 492
	i32 226, ; 493
	i32 1, ; 494
	i32 136, ; 495
	i32 296, ; 496
	i32 318, ; 497
	i32 134, ; 498
	i32 69, ; 499
	i32 146, ; 500
	i32 357, ; 501
	i32 336, ; 502
	i32 287, ; 503
	i32 199, ; 504
	i32 88, ; 505
	i32 96, ; 506
	i32 277, ; 507
	i32 225, ; 508
	i32 282, ; 509
	i32 352, ; 510
	i32 31, ; 511
	i32 45, ; 512
	i32 380, ; 513
	i32 291, ; 514
	i32 238, ; 515
	i32 256, ; 516
	i32 109, ; 517
	i32 158, ; 518
	i32 35, ; 519
	i32 22, ; 520
	i32 114, ; 521
	i32 57, ; 522
	i32 218, ; 523
	i32 316, ; 524
	i32 144, ; 525
	i32 118, ; 526
	i32 120, ; 527
	i32 110, ; 528
	i32 177, ; 529
	i32 258, ; 530
	i32 139, ; 531
	i32 264, ; 532
	i32 54, ; 533
	i32 379, ; 534
	i32 105, ; 535
	i32 223, ; 536
	i32 358, ; 537
	i32 206, ; 538
	i32 207, ; 539
	i32 133, ; 540
	i32 330, ; 541
	i32 321, ; 542
	i32 309, ; 543
	i32 364, ; 544
	i32 287, ; 545
	i32 209, ; 546
	i32 159, ; 547
	i32 343, ; 548
	i32 274, ; 549
	i32 163, ; 550
	i32 132, ; 551
	i32 309, ; 552
	i32 161, ; 553
	i32 356, ; 554
	i32 298, ; 555
	i32 140, ; 556
	i32 321, ; 557
	i32 317, ; 558
	i32 169, ; 559
	i32 208, ; 560
	i32 377, ; 561
	i32 232, ; 562
	i32 259, ; 563
	i32 326, ; 564
	i32 40, ; 565
	i32 285, ; 566
	i32 81, ; 567
	i32 56, ; 568
	i32 37, ; 569
	i32 97, ; 570
	i32 166, ; 571
	i32 172, ; 572
	i32 322, ; 573
	i32 82, ; 574
	i32 261, ; 575
	i32 98, ; 576
	i32 30, ; 577
	i32 159, ; 578
	i32 18, ; 579
	i32 127, ; 580
	i32 202, ; 581
	i32 119, ; 582
	i32 238, ; 583
	i32 281, ; 584
	i32 312, ; 585
	i32 294, ; 586
	i32 398, ; 587
	i32 314, ; 588
	i32 194, ; 589
	i32 165, ; 590
	i32 289, ; 591
	i32 410, ; 592
	i32 311, ; 593
	i32 228, ; 594
	i32 302, ; 595
	i32 170, ; 596
	i32 16, ; 597
	i32 404, ; 598
	i32 144, ; 599
	i32 349, ; 600
	i32 125, ; 601
	i32 118, ; 602
	i32 38, ; 603
	i32 115, ; 604
	i32 47, ; 605
	i32 142, ; 606
	i32 388, ; 607
	i32 117, ; 608
	i32 34, ; 609
	i32 178, ; 610
	i32 95, ; 611
	i32 53, ; 612
	i32 392, ; 613
	i32 303, ; 614
	i32 400, ; 615
	i32 392, ; 616
	i32 129, ; 617
	i32 153, ; 618
	i32 24, ; 619
	i32 371, ; 620
	i32 387, ; 621
	i32 161, ; 622
	i32 280, ; 623
	i32 148, ; 624
	i32 186, ; 625
	i32 104, ; 626
	i32 215, ; 627
	i32 89, ; 628
	i32 179, ; 629
	i32 268, ; 630
	i32 60, ; 631
	i32 142, ; 632
	i32 100, ; 633
	i32 5, ; 634
	i32 13, ; 635
	i32 237, ; 636
	i32 222, ; 637
	i32 122, ; 638
	i32 135, ; 639
	i32 187, ; 640
	i32 28, ; 641
	i32 344, ; 642
	i32 72, ; 643
	i32 278, ; 644
	i32 24, ; 645
	i32 397, ; 646
	i32 266, ; 647
	i32 307, ; 648
	i32 304, ; 649
	i32 395, ; 650
	i32 361, ; 651
	i32 137, ; 652
	i32 259, ; 653
	i32 275, ; 654
	i32 168, ; 655
	i32 308, ; 656
	i32 340, ; 657
	i32 232, ; 658
	i32 380, ; 659
	i32 101, ; 660
	i32 123, ; 661
	i32 279, ; 662
	i32 383, ; 663
	i32 396, ; 664
	i32 191, ; 665
	i32 192, ; 666
	i32 163, ; 667
	i32 167, ; 668
	i32 282, ; 669
	i32 39, ; 670
	i32 204, ; 671
	i32 403, ; 672
	i32 348, ; 673
	i32 408, ; 674
	i32 17, ; 675
	i32 171, ; 676
	i32 361, ; 677
	i32 360, ; 678
	i32 137, ; 679
	i32 150, ; 680
	i32 173, ; 681
	i32 271, ; 682
	i32 245, ; 683
	i32 155, ; 684
	i32 130, ; 685
	i32 19, ; 686
	i32 65, ; 687
	i32 219, ; 688
	i32 147, ; 689
	i32 47, ; 690
	i32 368, ; 691
	i32 174, ; 692
	i32 257, ; 693
	i32 79, ; 694
	i32 182, ; 695
	i32 61, ; 696
	i32 371, ; 697
	i32 106, ; 698
	i32 306, ; 699
	i32 261, ; 700
	i32 49, ; 701
	i32 292, ; 702
	i32 365, ; 703
	i32 303, ; 704
	i32 14, ; 705
	i32 224, ; 706
	i32 190, ; 707
	i32 241, ; 708
	i32 68, ; 709
	i32 171, ; 710
	i32 0, ; 711
	i32 267, ; 712
	i32 271, ; 713
	i32 377, ; 714
	i32 227, ; 715
	i32 370, ; 716
	i32 78, ; 717
	i32 250, ; 718
	i32 276, ; 719
	i32 108, ; 720
	i32 382, ; 721
	i32 260, ; 722
	i32 302, ; 723
	i32 67, ; 724
	i32 63, ; 725
	i32 27, ; 726
	i32 160, ; 727
	i32 245, ; 728
	i32 379, ; 729
	i32 200, ; 730
	i32 269, ; 731
	i32 10, ; 732
	i32 204, ; 733
	i32 234, ; 734
	i32 11, ; 735
	i32 78, ; 736
	i32 126, ; 737
	i32 83, ; 738
	i32 246, ; 739
	i32 404, ; 740
	i32 193, ; 741
	i32 66, ; 742
	i32 244, ; 743
	i32 107, ; 744
	i32 375, ; 745
	i32 230, ; 746
	i32 65, ; 747
	i32 128, ; 748
	i32 122, ; 749
	i32 242, ; 750
	i32 77, ; 751
	i32 317, ; 752
	i32 307, ; 753
	i32 369, ; 754
	i32 8, ; 755
	i32 275, ; 756
	i32 253, ; 757
	i32 389, ; 758
	i32 2, ; 759
	i32 393, ; 760
	i32 44, ; 761
	i32 320, ; 762
	i32 156, ; 763
	i32 128, ; 764
	i32 305, ; 765
	i32 23, ; 766
	i32 133, ; 767
	i32 263, ; 768
	i32 393, ; 769
	i32 294, ; 770
	i32 217, ; 771
	i32 364, ; 772
	i32 346, ; 773
	i32 29, ; 774
	i32 241, ; 775
	i32 262, ; 776
	i32 251, ; 777
	i32 248, ; 778
	i32 62, ; 779
	i32 403, ; 780
	i32 210, ; 781
	i32 206, ; 782
	i32 90, ; 783
	i32 391, ; 784
	i32 87, ; 785
	i32 148, ; 786
	i32 208, ; 787
	i32 36, ; 788
	i32 86, ; 789
	i32 283, ; 790
	i32 359, ; 791
	i32 231, ; 792
	i32 184, ; 793
	i32 213, ; 794
	i32 354, ; 795
	i32 192, ; 796
	i32 50, ; 797
	i32 6, ; 798
	i32 90, ; 799
	i32 366, ; 800
	i32 21, ; 801
	i32 162, ; 802
	i32 96, ; 803
	i32 50, ; 804
	i32 113, ; 805
	i32 299, ; 806
	i32 130, ; 807
	i32 242, ; 808
	i32 76, ; 809
	i32 27, ; 810
	i32 252, ; 811
	i32 372, ; 812
	i32 276, ; 813
	i32 298, ; 814
	i32 7, ; 815
	i32 205, ; 816
	i32 176, ; 817
	i32 110, ; 818
	i32 183, ; 819
	i32 299, ; 820
	i32 285 ; 821
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}

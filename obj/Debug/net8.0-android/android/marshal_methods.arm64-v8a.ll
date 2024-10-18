; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [411 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [822 x i64] [
	i64 17802880886401652, ; 0: tr/Microsoft.VisualStudio.Threading.resources.dll => 0x3f3fa037366a74 => 381
	i64 24362543149721218, ; 1: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 282
	i64 98382396393917666, ; 2: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 203
	i64 111931586493394668, ; 3: HotChocolate.Transport.Abstractions => 0x18da92f5415aeec => 180
	i64 120698629574877762, ; 4: Mono.Android => 0x1accec39cafe242 => 171
	i64 131669012237370309, ; 5: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 208
	i64 196720943101637631, ; 6: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 58
	i64 210515253464952879, ; 7: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 269
	i64 229794953483747371, ; 8: System.ValueTuple.dll => 0x330654aed93802b => 151
	i64 232391251801502327, ; 9: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 310
	i64 240748174317143947, ; 10: HotChocolate.Utilities => 0x3574f30627f478b => 182
	i64 244318361789008506, ; 11: IndexRange => 0x363fe416e8a0a7a => 183
	i64 295915112840604065, ; 12: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 313
	i64 311775573742219236, ; 13: UniqueryPlus => 0x453a63b828c6fe4 => 250
	i64 316157742385208084, ; 14: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 276
	i64 350667413455104241, ; 15: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 132
	i64 354178770117062970, ; 16: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 0x4ea4bb703cff13a => 202
	i64 390014653889418737, ; 17: ja/Microsoft.VisualStudio.Validation.resources.dll => 0x5699c42e64695f1 => 389
	i64 422779754995088667, ; 18: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 56
	i64 435118502366263740, ; 19: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 312
	i64 449765079935339303, ; 20: StreamJsonRpc.dll => 0x63de2f50debcb27 => 242
	i64 535107122908063503, ; 21: Microsoft.Extensions.ObjectPool.dll => 0x76d1517d9b7670f => 200
	i64 545109961164950392, ; 22: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 344
	i64 560278790331054453, ; 23: System.Reflection.Primitives => 0x7c6829760de3975 => 95
	i64 570522211579385009, ; 24: Serilog.dll => 0x7eae6edbda8d4b1 => 236
	i64 634308326490598313, ; 25: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 295
	i64 649145001856603771, ; 26: System.Security.SecureString => 0x90239f09b62167b => 129
	i64 668723562677762733, ; 27: Microsoft.Extensions.Configuration.Binder.dll => 0x947c88986577aad => 191
	i64 675799254782331204, ; 28: ko/Microsoft.VisualStudio.Threading.resources.dll => 0x960ebd778c64944 => 377
	i64 750875890346172408, ; 29: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 145
	i64 798450721097591769, ; 30: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 270
	i64 799765834175365804, ; 31: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 807768407251849530, ; 32: zh-Hans\Microsoft.VisualStudio.Validation.resources => 0xb35c5162f07913a => 395
	i64 821811755238291430, ; 33: Nethereum.BlockchainProcessing.dll => 0xb67a96fef37f7e6 => 218
	i64 849051935479314978, ; 34: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 347
	i64 872800313462103108, ; 35: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 281
	i64 895210737996778430, ; 36: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 296
	i64 940822596282819491, ; 37: System.Transactions => 0xd0e792aa81923a3 => 150
	i64 960778385402502048, ; 38: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 104
	i64 1010599046655515943, ; 39: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 95
	i64 1120440138749646132, ; 40: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 325
	i64 1121665720830085036, ; 41: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 355
	i64 1166741338400454851, ; 42: zh-Hant/Microsoft.VisualStudio.Validation.resources.dll => 0x10311910cc1f78c3 => 396
	i64 1182549588684364891, ; 43: zh-Hans\Microsoft.VisualStudio.Threading.resources => 0x10694295e2d0dc5b => 382
	i64 1268860745194512059, ; 44: System.Drawing.dll => 0x119be62002c19ebb => 36
	i64 1301626418029409250, ; 45: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 28
	i64 1315114680217950157, ; 46: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 265
	i64 1319971354134693807, ; 47: Nethereum.Util.dll => 0x12517af3fce3c7af => 230
	i64 1369545283391376210, ; 48: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 303
	i64 1404195534211153682, ; 49: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 50
	i64 1425944114962822056, ; 50: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 115
	i64 1476839205573959279, ; 51: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 70
	i64 1486715745332614827, ; 52: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 205
	i64 1492954217099365037, ; 53: System.Net.HttpListener => 0x14b809f350210aad => 65
	i64 1513467482682125403, ; 54: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 170
	i64 1537168428375924959, ; 55: System.Threading.Thread.dll => 0x15551e8a954ae0df => 145
	i64 1556147632182429976, ; 56: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 353
	i64 1576750169145655260, ; 57: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 324
	i64 1624659445732251991, ; 58: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 264
	i64 1628611045998245443, ; 59: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 299
	i64 1636321030536304333, ; 60: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 289
	i64 1651782184287836205, ; 61: System.Globalization.Calendars => 0x16ec4f2524cb982d => 40
	i64 1659332977923810219, ; 62: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 89
	i64 1660779948839220459, ; 63: it/Microsoft.VisualStudio.Threading.resources.dll => 0x170c469074a734eb => 375
	i64 1682513316613008342, ; 64: System.Net.dll => 0x17597cf276952bd6 => 81
	i64 1701484130926868200, ; 65: Nethereum.Util => 0x179ce2cd5edc36e8 => 230
	i64 1731380447121279447, ; 66: Newtonsoft.Json => 0x18071957e9b889d7 => 233
	i64 1735388228521408345, ; 67: System.Net.Mail.dll => 0x181556663c69b759 => 66
	i64 1743969030606105336, ; 68: System.Memory.dll => 0x1833d297e88f2af8 => 62
	i64 1767386781656293639, ; 69: System.Private.Uri.dll => 0x188704e9f5582107 => 86
	i64 1795316252682057001, ; 70: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 263
	i64 1825687700144851180, ; 71: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 106
	i64 1835311033149317475, ; 72: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 343
	i64 1836611346387731153, ; 73: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 310
	i64 1854145951182283680, ; 74: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 102
	i64 1865037103900624886, ; 75: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 188
	i64 1875417405349196092, ; 76: System.Drawing.Primitives => 0x1a06d2319b6c713c => 35
	i64 1875917498431009007, ; 77: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 260
	i64 1881198190668717030, ; 78: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 365
	i64 1897575647115118287, ; 79: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 312
	i64 1920760634179481754, ; 80: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 206
	i64 1930726298510463061, ; 81: CommunityToolkit.Mvvm.dll => 0x1acb5156cd389055 => 176
	i64 1959996714666907089, ; 82: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 365
	i64 1972385128188460614, ; 83: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 119
	i64 1981742497975770890, ; 84: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 297
	i64 1983698669889758782, ; 85: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 339
	i64 2019660174692588140, ; 86: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 357
	i64 2040001226662520565, ; 87: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 142
	i64 2062890601515140263, ; 88: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 141
	i64 2064708342624596306, ; 89: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 333
	i64 2080945842184875448, ; 90: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 53
	i64 2102659300918482391, ; 91: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 35
	i64 2106033277907880740, ; 92: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 141
	i64 2133195048986300728, ; 93: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 233
	i64 2141794003861218914, ; 94: cs/Microsoft.VisualStudio.Validation.resources.dll => 0x1db92e4c7e35a662 => 384
	i64 2165310824878145998, ; 95: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 257
	i64 2165725771938924357, ; 96: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 267
	i64 2200176636225660136, ; 97: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 199
	i64 2234912604213613130, ; 98: Nethereum.JsonRpc.Client.dll => 0x1f04012c2632124a => 221
	i64 2262844636196693701, ; 99: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 281
	i64 2283599909513827695, ; 100: pt-BR/Microsoft.VisualStudio.Validation.resources.dll => 0x1fb0fa04c7af956f => 392
	i64 2287834202362508563, ; 101: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 102: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2302323944321350744, ; 103: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 361
	i64 2304837677853103545, ; 104: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 309
	i64 2315304989185124968, ; 105: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 51
	i64 2329709569556905518, ; 106: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 292
	i64 2335503487726329082, ; 107: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 136
	i64 2337758774805907496, ; 108: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 101
	i64 2470498323731680442, ; 109: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 274
	i64 2476157418811556216, ; 110: Nethereum.JsonRpc.Client => 0x225d140d9c360178 => 221
	i64 2479423007379663237, ; 111: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 319
	i64 2497223385847772520, ; 112: System.Runtime => 0x22a7eb7046413568 => 116
	i64 2547086958574651984, ; 113: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 258
	i64 2592350477072141967, ; 114: System.Xml.dll => 0x23f9e10627330e8f => 163
	i64 2602673633151553063, ; 115: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 364
	i64 2624866290265602282, ; 116: mscorlib.dll => 0x246d65fbde2db8ea => 166
	i64 2632269733008246987, ; 117: System.Net.NameResolution => 0x2487b36034f808cb => 67
	i64 2638529983022673690, ; 118: Substrate.NetApi.dll => 0x249df10a3f48af1a => 245
	i64 2641958399916250316, ; 119: StrawberryShake.Transport.WebSockets.dll => 0x24aa1f2ac25e14cc => 241
	i64 2656907746661064104, ; 120: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 192
	i64 2662981627730767622, ; 121: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 339
	i64 2686604234043738238, ; 122: Nethereum.Contracts => 0x2548bc510e3cc87e => 219
	i64 2706075432581334785, ; 123: System.Net.WebSockets => 0x258de944be6c0701 => 80
	i64 2777443011723168869, ; 124: HotChocolate.Language.SyntaxTree => 0x268b75b421a68c65 => 179
	i64 2783046991838674048, ; 125: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 101
	i64 2787234703088983483, ; 126: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 314
	i64 2797694062046893160, ; 127: Nethereum.Util.Rest => 0x26d367ed36865468 => 231
	i64 2815524396660695947, ; 128: System.Security.AccessControl => 0x2712c0857f68238b => 117
	i64 2874659109084101369, ; 129: de/Microsoft.VisualStudio.Validation.resources.dll => 0x27e4d73aa74c7af9 => 385
	i64 2895129759130297543, ; 130: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 344
	i64 2923871038697555247, ; 131: Jsr305Binding => 0x2893ad37e69ec52f => 326
	i64 2957510711280508021, ; 132: zh-Hant/Microsoft.VisualStudio.Threading.resources.dll => 0x290b305285499c75 => 383
	i64 2991907748835029057, ; 133: de/StreamJsonRpc.resources.dll => 0x2985643eea0cf041 => 398
	i64 3017136373564924869, ; 134: System.Net.WebProxy => 0x29df058bd93f63c5 => 78
	i64 3017704767998173186, ; 135: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 325
	i64 3067737428041836911, ; 136: StrawberryShake.Resources.dll => 0x2a92caefee9aa96f => 239
	i64 3106852385031680087, ; 137: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 114
	i64 3110390492489056344, ; 138: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 121
	i64 3135773902340015556, ; 139: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 48
	i64 3281594302220646930, ; 140: System.Security.Principal => 0x2d8a90a198ceba12 => 128
	i64 3289520064315143713, ; 141: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 290
	i64 3303437397778967116, ; 142: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 261
	i64 3311221304742556517, ; 143: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 82
	i64 3325875462027654285, ; 144: System.Runtime.Numerics => 0x2e27e21c8958b48d => 110
	i64 3328853167529574890, ; 145: System.Net.Sockets.dll => 0x2e327651a008c1ea => 75
	i64 3344514922410554693, ; 146: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 336
	i64 3378246407733840341, ; 147: pl\Microsoft.VisualStudio.Threading.resources => 0x2ee1f13588b709d5 => 378
	i64 3429672777697402584, ; 148: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 208
	i64 3437845325506641314, ; 149: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 53
	i64 3493805808809882663, ; 150: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 316
	i64 3494946837667399002, ; 151: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 189
	i64 3508450208084372758, ; 152: System.Net.Ping => 0x30b084e02d03ad16 => 69
	i64 3522470458906976663, ; 153: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 315
	i64 3531994851595924923, ; 154: System.Numerics => 0x31042a9aade235bb => 83
	i64 3551103847008531295, ; 155: System.Private.CoreLib.dll => 0x31480e226177735f => 172
	i64 3558736420463062807, ; 156: HotChocolate.Transport.Http => 0x31632beb5ef22f17 => 181
	i64 3567343442040498961, ; 157: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 359
	i64 3571415421602489686, ; 158: System.Runtime.dll => 0x319037675df7e556 => 116
	i64 3638003163729360188, ; 159: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 190
	i64 3647754201059316852, ; 160: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 156
	i64 3655542548057982301, ; 161: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 189
	i64 3659371656528649588, ; 162: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 255
	i64 3665839398885538671, ; 163: Nethereum.Accounts => 0x32dfad82c6343b6f => 217
	i64 3690127606734143618, ; 164: fr/Microsoft.VisualStudio.Validation.resources.dll => 0x3335f781d7404082 => 387
	i64 3704189264714383441, ; 165: Extensions.Data.xxHash.core20.dll => 0x3367ec82b81dc051 => 177
	i64 3716579019761409177, ; 166: netstandard.dll => 0x3393f0ed5c8c5c99 => 167
	i64 3727469159507183293, ; 167: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 308
	i64 3772598417116884899, ; 168: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 282
	i64 3869221888984012293, ; 169: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 197
	i64 3869649043256705283, ; 170: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 32
	i64 3875180953283865480, ; 171: MessagePack.dll => 0x35c7688ba0d82b88 => 185
	i64 3877896057319815137, ; 172: KusamaAssetHub.NetApi.dll => 0x35d10deb0c6f77e1 => 184
	i64 3890352374528606784, ; 173: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 206
	i64 3919223565570527920, ; 174: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 122
	i64 3933965368022646939, ; 175: System.Net.Requests => 0x369840a8bfadc09b => 72
	i64 3966267475168208030, ; 176: System.Memory => 0x370b03412596249e => 62
	i64 4006972109285359177, ; 177: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 161
	i64 4009997192427317104, ; 178: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 113
	i64 4020380517496724220, ; 179: MessagePack.Annotations.dll => 0x37cb42c79f4b1afc => 186
	i64 4073500526318903918, ; 180: System.Private.Xml.dll => 0x3887fb25779ae26e => 88
	i64 4073631083018132676, ; 181: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 204
	i64 4120493066591692148, ; 182: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 370
	i64 4148881117810174540, ; 183: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 105
	i64 4154383907710350974, ; 184: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4167269041631776580, ; 185: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 146
	i64 4168469861834746866, ; 186: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 118
	i64 4187479170553454871, ; 187: System.Linq.Expressions => 0x3a1cea1e912fa117 => 58
	i64 4201423742386704971, ; 188: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 276
	i64 4205801962323029395, ; 189: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4235503420553921860, ; 190: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 52
	i64 4282138915307457788, ; 191: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 92
	i64 4356591372459378815, ; 192: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 367
	i64 4373617458794931033, ; 193: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 55
	i64 4397634830160618470, ; 194: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 129
	i64 4439495113871961702, ; 195: Nethereum.Web3.dll => 0x3d9c4148dc6bae66 => 232
	i64 4477672992252076438, ; 196: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 152
	i64 4484706122338676047, ; 197: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 41
	i64 4533124835995628778, ; 198: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 92
	i64 4636684751163556186, ; 199: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 320
	i64 4645196117681914360, ; 200: StrawberryShake.Resources => 0x40770d41fa7441f8 => 239
	i64 4654490921503260514, ; 201: fr\Microsoft.VisualStudio.Validation.resources => 0x409812d5227b7f62 => 387
	i64 4657212095206026001, ; 202: Microsoft.Extensions.Http.dll => 0x40a1bdb9c2686b11 => 196
	i64 4672453897036726049, ; 203: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 50
	i64 4679594760078841447, ; 204: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 337
	i64 4690147451326774717, ; 205: StrobeNet => 0x4116c041ec893dbd => 243
	i64 4716677666592453464, ; 206: System.Xml.XmlSerializer => 0x417501590542f358 => 162
	i64 4723252672199750351, ; 207: zh-Hant\StreamJsonRpc.resources => 0x418c5d47cee172cf => 409
	i64 4743821336939966868, ; 208: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 209: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 294
	i64 4791179585239443491, ; 210: HotChocolate.Language.SyntaxTree.dll => 0x427db072b14ce823 => 179
	i64 4794310189461587505, ; 211: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 258
	i64 4795410492532947900, ; 212: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 315
	i64 4809057822547766521, ; 213: System.Drawing => 0x42bd349c3145ecf9 => 36
	i64 4814660307502931973, ; 214: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 67
	i64 4853321196694829351, ; 215: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 109
	i64 4935821376384744126, ; 216: Nethereum.RPC.dll => 0x447f8f6406313abe => 227
	i64 4952488434027013261, ; 217: pl/Microsoft.VisualStudio.Validation.resources.dll => 0x44bac5fdc869248d => 391
	i64 4966213257581017890, ; 218: it\Microsoft.VisualStudio.Threading.resources => 0x44eb88a548f3bb22 => 375
	i64 5016515801625106806, ; 219: StrobeNet.dll => 0x459e3e8afdff9976 => 243
	i64 5055365687667823624, ; 220: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 259
	i64 5072195939344590231, ; 221: cs/Microsoft.VisualStudio.Threading.resources.dll => 0x46640f554bd02597 => 371
	i64 5081566143765835342, ; 222: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 99
	i64 5099468265966638712, ; 223: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 99
	i64 5103417709280584325, ; 224: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5112836352847824253, ; 225: Microsoft.AspNetCore.WebUtilities.dll => 0x46f47192ee32c57d => 187
	i64 5129296379985879992, ; 226: MonkeyFinder.dll => 0x472eebe1a4c163b8 => 0
	i64 5182934613077526976, ; 227: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5205316157927637098, ; 228: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 301
	i64 5223283780243604198, ; 229: Substrate.NET.Schnorrkel.dll => 0x487cd4ec8a7ac2e6 => 246
	i64 5244375036463807528, ; 230: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 231: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 128
	i64 5278787618751394462, ; 232: System.Net.WebClient.dll => 0x4942055efc68329e => 76
	i64 5280980186044710147, ; 233: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 293
	i64 5290786973231294105, ; 234: System.Runtime.Loader => 0x496ca6b869b72699 => 109
	i64 5376510917114486089, ; 235: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 319
	i64 5408338804355907810, ; 236: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 317
	i64 5423376490970181369, ; 237: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 106
	i64 5424449234786381625, ; 238: cs\Microsoft.VisualStudio.Validation.resources => 0x4b4783d6cd94ef39 => 384
	i64 5440320908473006344, ; 239: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5446034149219586269, ; 240: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 241: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 272
	i64 5457765010617926378, ; 242: System.Xml.Serialization => 0x4bbde05c557002ea => 157
	i64 5471532531798518949, ; 243: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 363
	i64 5499883080459888738, ; 244: Microsoft.VisualStudio.Threading => 0x4c538285a4fe2862 => 212
	i64 5507995362134886206, ; 245: System.Core.dll => 0x4c705499688c873e => 21
	i64 5522859530602327440, ; 246: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 366
	i64 5524319598158754396, ; 247: Nethereum.Model.dll => 0x4caa5367c9fb325c => 225
	i64 5527431512186326818, ; 248: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 49
	i64 5535231221477902594, ; 249: Nethereum.Accounts.dll => 0x4cd1177811d78902 => 217
	i64 5570799893513421663, ; 250: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 43
	i64 5573260873512690141, ; 251: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 126
	i64 5574231584441077149, ; 252: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 262
	i64 5591791169662171124, ; 253: System.Linq.Parallel => 0x4d9a087135e137f4 => 59
	i64 5635158070688529302, ; 254: es/Microsoft.VisualStudio.Validation.resources.dll => 0x4e341a68b090bb96 => 386
	i64 5650097808083101034, ; 255: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 119
	i64 5676263520774316728, ; 256: Microsoft.VisualStudio.Validation => 0x4ec623991742e2b8 => 213
	i64 5681707193364847894, ; 257: pt-BR/StreamJsonRpc.resources.dll => 0x4ed97a96e24b1d16 => 405
	i64 5692067934154308417, ; 258: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 322
	i64 5702756172982090525, ; 259: Nethereum.ABI => 0x4f2442865b437b1d => 216
	i64 5724799082821825042, ; 260: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 285
	i64 5757522595884336624, ; 261: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 271
	i64 5783556987928984683, ; 262: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5815588864042668787, ; 263: de\StreamJsonRpc.resources => 0x50b51f4270fb12f3 => 398
	i64 5896680224035167651, ; 264: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 291
	i64 5924126145606300664, ; 265: pl\StreamJsonRpc.resources => 0x5236b9579177b3f8 => 404
	i64 5959344983920014087, ; 266: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 311
	i64 5979151488806146654, ; 267: System.Formats.Asn1 => 0x52fa3699a489d25e => 38
	i64 5984759512290286505, ; 268: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 124
	i64 6010974535988770325, ; 269: Microsoft.Extensions.Diagnostics.dll => 0x536b457e33877615 => 194
	i64 6068057819846744445, ; 270: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 360
	i64 6078643590928739646, ; 271: Nethereum.ABI.dll => 0x545bae23d1832d3e => 216
	i64 6102788177522843259, ; 272: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 311
	i64 6200764641006662125, ; 273: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 360
	i64 6222399776351216807, ; 274: System.Text.Json.dll => 0x565a67a0ffe264a7 => 137
	i64 6251069312384999852, ; 275: System.Transactions.Local => 0x56c0426b870da1ac => 149
	i64 6278736998281604212, ; 276: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 85
	i64 6284145129771520194, ; 277: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 90
	i64 6315590403487358180, ; 278: fr\StreamJsonRpc.resources => 0x57a57c02b2badce4 => 400
	i64 6319713645133255417, ; 279: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 295
	i64 6357457916754632952, ; 280: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 410
	i64 6401687960814735282, ; 281: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 292
	i64 6435971861494892919, ; 282: cs/StreamJsonRpc.resources.dll => 0x59512a4f0cd00977 => 397
	i64 6478287442656530074, ; 283: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 348
	i64 6504860066809920875, ; 284: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 267
	i64 6517935705746594345, ; 285: Extensions.Data.xxHash.core20 => 0x5a745bfda9dc5a29 => 177
	i64 6530393304153863159, ; 286: Substrate.PolkadotAssetHub.NET.NetApiExt => 0x5aa09e1c51ae33f7 => 247
	i64 6548213210057960872, ; 287: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 278
	i64 6557084851308642443, ; 288: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 323
	i64 6560151584539558821, ; 289: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 201
	i64 6589202984700901502, ; 290: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 328
	i64 6591971792923354531, ; 291: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 293
	i64 6617685658146568858, ; 292: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 133
	i64 6685078401594936705, ; 293: StrawberryShake.Core.dll => 0x5cc62b631eb3cd81 => 238
	i64 6702196197828079287, ; 294: NBitcoin.Secp256k1.dll => 0x5d02fbeea2842eb7 => 214
	i64 6713049226152416138, ; 295: cs\Microsoft.VisualStudio.Threading.resources => 0x5d298ab43486938a => 371
	i64 6713440830605852118, ; 296: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 96
	i64 6739246970287767386, ; 297: tr/StreamJsonRpc.resources.dll => 0x5d869d69d5a13f5a => 407
	i64 6739853162153639747, ; 298: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6743165466166707109, ; 299: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 356
	i64 6772837112740759457, ; 300: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 105
	i64 6777482997383978746, ; 301: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 359
	i64 6786606130239981554, ; 302: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 33
	i64 6798329586179154312, ; 303: System.Windows => 0x5e5884bd523ca188 => 154
	i64 6814185388980153342, ; 304: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 158
	i64 6876862101832370452, ; 305: System.Xml.Linq => 0x5f6f85a57d108914 => 155
	i64 6894844156784520562, ; 306: System.Numerics.Vectors => 0x5faf683aead1ad72 => 82
	i64 7011053663211085209, ; 307: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 287
	i64 7060896174307865760, ; 308: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 143
	i64 7073343173507201490, ; 309: Nethereum.Signer.EIP712 => 0x62299023df54b9d2 => 229
	i64 7083547580668757502, ; 310: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 87
	i64 7101497697220435230, ; 311: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 312: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 288
	i64 7112547816752919026, ; 313: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 51
	i64 7192745174564810625, ; 314: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 257
	i64 7196716310352976768, ; 315: SerilogTraceListener => 0x63dfdf5abbd95b80 => 237
	i64 7220009545223068405, ; 316: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 363
	i64 7270811800166795866, ; 317: System.Linq => 0x64e71ccf51a90a5a => 61
	i64 7299370801165188114, ; 318: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 54
	i64 7302339732936402481, ; 319: Nethereum.BlockchainProcessing => 0x65571f4c32e52631 => 218
	i64 7315954776202924979, ; 320: Nethereum.RLP.dll => 0x65877e1b7c65d3b3 => 226
	i64 7316205155833392065, ; 321: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7338192458477945005, ; 322: System.Reflection => 0x65d67f295d0740ad => 97
	i64 7349431895026339542, ; 323: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 256
	i64 7377312882064240630, ; 324: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7385535845306683834, ; 325: MonkeyFinder => 0x667eb1b8976b51ba => 0
	i64 7391326193615714426, ; 326: Nethereum.RPC => 0x669344031d81387a => 227
	i64 7488575175965059935, ; 327: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 155
	i64 7489048572193775167, ; 328: System.ObjectModel => 0x67ee71ff6b419e3f => 84
	i64 7584834483252033044, ; 329: pt-BR\Microsoft.VisualStudio.Validation.resources => 0x6942bec6be5ef614 => 392
	i64 7592577537120840276, ; 330: System.Diagnostics.Process => 0x695e410af5b2aa54 => 29
	i64 7637303409920963731, ; 331: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 45
	i64 7653670749696105011, ; 332: Substrate.KusamaAssetHub.NET.NetApiExt.dll => 0x6a374cfef76f1a33 => 244
	i64 7654504624184590948, ; 333: System.Net.Http => 0x6a3a4366801b8264 => 64
	i64 7683996460257074599, ; 334: it\Microsoft.VisualStudio.Validation.resources => 0x6aa30a11acfb5da7 => 388
	i64 7694700312542370399, ; 335: System.Net.Mail => 0x6ac9112a7e2cda5f => 66
	i64 7708790323521193081, ; 336: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 354
	i64 7714652370974252055, ; 337: System.Private.CoreLib => 0x6b0ff375198b9c17 => 172
	i64 7725404731275645577, ; 338: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 296
	i64 7735176074855944702, ; 339: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 340: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 331
	i64 7791074099216502080, ; 341: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 47
	i64 7820441508502274321, ; 342: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7836164640616011524, ; 343: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 264
	i64 7919757340696389605, ; 344: Microsoft.Extensions.Diagnostics.Abstractions => 0x6de8a157378027e5 => 195
	i64 7921741049276291146, ; 345: ja/Microsoft.VisualStudio.Threading.resources.dll => 0x6defad835cbe584a => 376
	i64 7976425908989740095, ; 346: HotChocolate.Transport.Abstractions.dll => 0x6eb1f51a728e443f => 180
	i64 8025517457475554965, ; 347: WindowsBase => 0x6f605d9b4786ce95 => 165
	i64 8031450141206250471, ; 348: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 108
	i64 8037258329461389554, ; 349: ru/StreamJsonRpc.resources.dll => 0x6f8a13de0f9878f2 => 406
	i64 8064050204834738623, ; 350: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 351: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 290
	i64 8085230611270010360, ; 352: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 63
	i64 8087206902342787202, ; 353: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 27
	i64 8093002658316058385, ; 354: Nethereum.Signer.EIP712.dll => 0x70501f0a07387f11 => 229
	i64 8103644804370223335, ; 355: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8113615946733131500, ; 356: System.Reflection.Extensions => 0x70995ab73cf916ec => 93
	i64 8167236081217502503, ; 357: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 168
	i64 8185542183669246576, ; 358: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187640529827139739, ; 359: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 335
	i64 8199901720993286004, ; 360: pl/StreamJsonRpc.resources.dll => 0x71cbe72b98eb4774 => 404
	i64 8202143405964630621, ; 361: de\Microsoft.VisualStudio.Threading.resources => 0x71d3ddf88d559a5d => 372
	i64 8246048515196606205, ; 362: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 209
	i64 8264926008854159966, ; 363: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 29
	i64 8290740647658429042, ; 364: System.Runtime.Extensions => 0x730ea0b15c929a72 => 103
	i64 8318905602908530212, ; 365: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8368701292315763008, ; 366: System.Security.Cryptography => 0x7423997c6fd56140 => 126
	i64 8398329775253868912, ; 367: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 273
	i64 8400357532724379117, ; 368: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 305
	i64 8410671156615598628, ; 369: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 91
	i64 8426919725312979251, ; 370: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 294
	i64 8518412311883997971, ; 371: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8563666267364444763, ; 372: System.Private.Uri => 0x76d841191140ca5b => 86
	i64 8595034769595574800, ; 373: ja\Microsoft.VisualStudio.Threading.resources => 0x7747b295a1e02a10 => 376
	i64 8598790081731763592, ; 374: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 284
	i64 8601935802264776013, ; 375: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 317
	i64 8614108721271900878, ; 376: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 358
	i64 8623059219396073920, ; 377: System.Net.Quic.dll => 0x77ab42ac514299c0 => 71
	i64 8626175481042262068, ; 378: Java.Interop => 0x77b654e585b55834 => 168
	i64 8638033745037498840, ; 379: Nethereum.RLP => 0x77e075ecc2cc19d8 => 226
	i64 8638972117149407195, ; 380: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 381: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 304
	i64 8648495978913578441, ; 382: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8677882282824630478, ; 383: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 358
	i64 8678282596152819256, ; 384: IndexRange.dll => 0x786f740aac24be38 => 183
	i64 8684531736582871431, ; 385: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 44
	i64 8725526185868997716, ; 386: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 27
	i64 8760987536307435817, ; 387: HotChocolate.Utilities.dll => 0x799547bf1f3ab929 => 182
	i64 8772037756965498393, ; 388: it/Microsoft.VisualStudio.Validation.resources.dll => 0x79bc89dd1c3e2e19 => 388
	i64 8779393579707831002, ; 389: UniqueryPlus.Stick.dll => 0x79d6abf20dd492da => 252
	i64 8816904670177563593, ; 390: Microsoft.Extensions.Diagnostics => 0x7a5bf015646a93c9 => 194
	i64 8853378295825400934, ; 391: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 332
	i64 8907357455289697290, ; 392: es/Microsoft.VisualStudio.Threading.resources.dll => 0x7b9d4a6991f8440a => 373
	i64 8941376889969657626, ; 393: System.Xml.XDocument => 0x7c1626e87187471a => 158
	i64 8951477988056063522, ; 394: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 307
	i64 8954753533646919997, ; 395: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 112
	i64 9012519219235259462, ; 396: StrawberryShake.Transport.Http.dll => 0x7d12e67ac1e60446 => 240
	i64 9041985878101337471, ; 397: BouncyCastle.Crypto => 0x7d7b963fe854257f => 235
	i64 9045785047181495996, ; 398: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 368
	i64 9107347941521540835, ; 399: UniqueryPlus.Stick => 0x7e63ccb33446c6e3 => 252
	i64 9138683372487561558, ; 400: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 121
	i64 9141332081356523041, ; 401: Nethereum.Merkle.Patricia.dll => 0x7edc89185b234621 => 224
	i64 9171069561746690957, ; 402: it\StreamJsonRpc.resources => 0x7f462f2d0e4f138d => 401
	i64 9312692141327339315, ; 403: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 322
	i64 9324707631942237306, ; 404: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 263
	i64 9468215723722196442, ; 405: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 159
	i64 9496457428801317608, ; 406: KusamaAssetHub.NetApi => 0x83ca31b794526ae8 => 184
	i64 9554839972845591462, ; 407: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 131
	i64 9575902398040817096, ; 408: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 327
	i64 9584643793929893533, ; 409: System.IO.dll => 0x85037ebfbbd7f69d => 57
	i64 9630107140230300349, ; 410: de\Microsoft.VisualStudio.Validation.resources => 0x85a5036bea6142bd => 385
	i64 9659729154652888475, ; 411: System.Text.RegularExpressions => 0x860e407c9991dd9b => 138
	i64 9662334977499516867, ; 412: System.Numerics.dll => 0x8617827802b0cfc3 => 83
	i64 9667360217193089419, ; 413: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 30
	i64 9678050649315576968, ; 414: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 274
	i64 9679978064620295023, ; 415: it/StreamJsonRpc.resources.dll => 0x865630c35744136f => 401
	i64 9702891218465930390, ; 416: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9737654085557355179, ; 417: Serilog => 0x872318cc6b4702ab => 236
	i64 9776375771063220978, ; 418: Nerdbank.Streams => 0x87aca9f760f57af2 => 215
	i64 9780093022148426479, ; 419: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 324
	i64 9782646107466166869, ; 420: Nethereum.KeyStore => 0x87c2f0cdd6e0f255 => 223
	i64 9808709177481450983, ; 421: Mono.Android.dll => 0x881f890734e555e7 => 171
	i64 9825649861376906464, ; 422: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 271
	i64 9834056768316610435, ; 423: System.Transactions.dll => 0x8879968718899783 => 150
	i64 9836529246295212050, ; 424: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 94
	i64 9844193899530095610, ; 425: ja\Microsoft.VisualStudio.Validation.resources => 0x889d9a31e18f0bfa => 389
	i64 9907349773706910547, ; 426: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 284
	i64 9933555792566666578, ; 427: System.Linq.Queryable.dll => 0x89db145cf475c552 => 60
	i64 9956195530459977388, ; 428: Microsoft.Maui => 0x8a2b8315b36616ac => 207
	i64 9974604633896246661, ; 429: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 157
	i64 9991543690424095600, ; 430: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 343
	i64 10017511394021241210, ; 431: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 199
	i64 10038780035334861115, ; 432: System.Net.Http.dll => 0x8b50e941206af13b => 64
	i64 10051358222726253779, ; 433: System.Private.Xml => 0x8b7d990c97ccccd3 => 88
	i64 10078727084704864206, ; 434: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 79
	i64 10089571585547156312, ; 435: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 47
	i64 10092835686693276772, ; 436: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 205
	i64 10105485790837105934, ; 437: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 143
	i64 10143853363526200146, ; 438: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 340
	i64 10205853378024263619, ; 439: Microsoft.Extensions.Configuration.Binder => 0x8da279930adb4fc3 => 191
	i64 10226222362177979215, ; 440: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 333
	i64 10229024438826829339, ; 441: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 278
	i64 10236703004850800690, ; 442: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 74
	i64 10245369515835430794, ; 443: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 91
	i64 10321854143672141184, ; 444: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 330
	i64 10360651442923773544, ; 445: System.Text.Encoding => 0x8fc86d98211c1e68 => 135
	i64 10364469296367737616, ; 446: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 90
	i64 10376576884623852283, ; 447: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 316
	i64 10382625381193453752, ; 448: Substrate.KusamaAssetHub.NET.NetApiExt => 0x90167ec651fd90b8 => 244
	i64 10406448008575299332, ; 449: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 336
	i64 10430153318873392755, ; 450: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 275
	i64 10447083246144586668, ; 451: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 188
	i64 10473967404958599929, ; 452: StrawberryShake.Transport.WebSockets => 0x915b01dc8193caf9 => 241
	i64 10506226065143327199, ; 453: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 338
	i64 10546663366131771576, ; 454: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 112
	i64 10566960649245365243, ; 455: System.Globalization.dll => 0x92a562b96dcd13fb => 42
	i64 10595762989148858956, ; 456: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 159
	i64 10670374202010151210, ; 457: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10714184849103829812, ; 458: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 103
	i64 10753425080250140032, ; 459: UniqueryPlus.Speck.dll => 0x953bd722eb160580 => 251
	i64 10785150219063592792, ; 460: System.Net.Primitives => 0x95ac8cfb68830758 => 70
	i64 10809043855025277762, ; 461: Microsoft.Extensions.Options.ConfigurationExtensions => 0x9601701e0c668b42 => 202
	i64 10822644899632537592, ; 462: System.Linq.Queryable => 0x9631c23204ca5ff8 => 60
	i64 10830817578243619689, ; 463: System.Formats.Tar => 0x964ecb340a447b69 => 39
	i64 10847732767863316357, ; 464: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 265
	i64 10899834349646441345, ; 465: System.Web => 0x9743fd975946eb81 => 153
	i64 10943875058216066601, ; 466: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 56
	i64 10964653383833615866, ; 467: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 34
	i64 11002576679268595294, ; 468: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 198
	i64 11009005086950030778, ; 469: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 207
	i64 11019817191295005410, ; 470: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 262
	i64 11023048688141570732, ; 471: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 472: System.Xml => 0x992e31d0412bf7fc => 163
	i64 11071824625609515081, ; 473: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 328
	i64 11078422477095414952, ; 474: MessagePack.Annotations => 0x99be768c02f9aca8 => 186
	i64 11103970607964515343, ; 475: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 349
	i64 11136029745144976707, ; 476: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 326
	i64 11162124722117608902, ; 477: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 321
	i64 11188319605227840848, ; 478: System.Threading.Overlapped => 0x9b44e5671724e550 => 140
	i64 11220793807500858938, ; 479: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 352
	i64 11226290749488709958, ; 480: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 201
	i64 11235648312900863002, ; 481: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 89
	i64 11329751333533450475, ; 482: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 147
	i64 11340910727871153756, ; 483: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 277
	i64 11347436699239206956, ; 484: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 162
	i64 11385656703440359675, ; 485: zh-Hant\Microsoft.VisualStudio.Validation.resources => 0x9e01fa72af1b90fb => 396
	i64 11392833485892708388, ; 486: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 306
	i64 11432101114902388181, ; 487: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11446671985764974897, ; 488: Mono.Android.Export => 0x9edabf8623efc131 => 169
	i64 11448276831755070604, ; 489: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 31
	i64 11459332348297351260, ; 490: Nethereum.Merkle.Patricia => 0x9f07ba0e7f68105c => 224
	i64 11463792770354800097, ; 491: UniqueryPlus.Speck => 0x9f1792c96fb065e1 => 251
	i64 11465237565819292444, ; 492: ru/Microsoft.VisualStudio.Threading.resources.dll => 0x9f1cb4d2181f8b1c => 380
	i64 11482691884102096350, ; 493: fr/Microsoft.VisualStudio.Threading.resources.dll => 0x9f5ab76e412a95de => 374
	i64 11485890710487134646, ; 494: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 107
	i64 11508496261504176197, ; 495: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 287
	i64 11513602507638267977, ; 496: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 248
	i64 11518296021396496455, ; 497: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 350
	i64 11529969570048099689, ; 498: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 321
	i64 11530571088791430846, ; 499: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 197
	i64 11580057168383206117, ; 500: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 260
	i64 11591352189662810718, ; 501: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 314
	i64 11597940890313164233, ; 502: netstandard => 0xa0f429ca8d1805c9 => 167
	i64 11672361001936329215, ; 503: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 288
	i64 11692977985522001935, ; 504: System.Threading.Overlapped.dll => 0xa245cd869980680f => 140
	i64 11705530742807338875, ; 505: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 346
	i64 11707554492040141440, ; 506: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 59
	i64 11743665907891708234, ; 507: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 144
	i64 11758407158119947063, ; 508: Nethereum.JsonRpc.RpcClient.dll => 0xa32e4102f8265b37 => 222
	i64 11766809059788673038, ; 509: zh-Hans/Microsoft.VisualStudio.Threading.resources.dll => 0xa34c1a7f248d500e => 382
	i64 11805696942134518613, ; 510: UniqueryPlus.dll => 0xa3d642d1d1d7e355 => 250
	i64 11890655789319506262, ; 511: ko/StreamJsonRpc.resources.dll => 0xa5041870e4d4c956 => 403
	i64 11932173626610710073, ; 512: Nethereum.Web3 => 0xa59798b1ac6a7639 => 232
	i64 11940587484706586751, ; 513: UniqueryPlus.UniqueSubquery.dll => 0xa5b57d0dab69407f => 253
	i64 11991047634523762324, ; 514: System.Net => 0xa668c24ad493ae94 => 81
	i64 12040886584167504988, ; 515: System.Net.ServicePoint => 0xa719d28d8e121c5c => 74
	i64 12063623837170009990, ; 516: System.Security => 0xa76a99f6ce740786 => 130
	i64 12096697103934194533, ; 517: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 518: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12123043025855404482, ; 519: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 93
	i64 12137774235383566651, ; 520: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 318
	i64 12145679461940342714, ; 521: System.Text.Json => 0xa88e1f1ebcb62fba => 137
	i64 12182898655040749861, ; 522: Nethereum.Hex => 0xa91259c76c49c125 => 220
	i64 12191646537372739477, ; 523: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 254
	i64 12201331334810686224, ; 524: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 113
	i64 12269460666702402136, ; 525: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12313367145828839434, ; 526: System.IO.Pipelines => 0xaae1de2e1c17f00a => 248
	i64 12332222936682028543, ; 527: System.Runtime.Handles => 0xab24db6c07db5dff => 104
	i64 12375446203996702057, ; 528: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12451044538927396471, ; 529: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 286
	i64 12466513435562512481, ; 530: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 300
	i64 12475113361194491050, ; 531: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 410
	i64 12481884125606176949, ; 532: zh-Hant/StreamJsonRpc.resources.dll => 0xad388f7afa57e8b5 => 409
	i64 12487638416075308985, ; 533: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 280
	i64 12517810545449516888, ; 534: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 33
	i64 12538491095302438457, ; 535: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 268
	i64 12550732019250633519, ; 536: System.IO.Compression => 0xae2d28465e8e1b2f => 46
	i64 12573751959656727467, ; 537: ru/Microsoft.VisualStudio.Validation.resources.dll => 0xae7ef0c9e93603ab => 393
	i64 12597255045930287689, ; 538: SerilogTraceListener.dll => 0xaed270b89dac0249 => 237
	i64 12603216663576844694, ; 539: de/Microsoft.VisualStudio.Threading.resources.dll => 0xaee79ec7e3c81996 => 372
	i64 12663480043547724429, ; 540: Nethereum.Signer.dll => 0xafbdb8016fe90a8d => 228
	i64 12681088699309157496, ; 541: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 351
	i64 12699999919562409296, ; 542: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 30
	i64 12700543734426720211, ; 543: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 269
	i64 12708238894395270091, ; 544: System.IO => 0xb05cbbf17d3ba3cb => 57
	i64 12708922737231849740, ; 545: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 134
	i64 12717050818822477433, ; 546: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 114
	i64 12726057104018228727, ; 547: Microsoft.NET.StringTools => 0xb09c0982b457c5f7 => 211
	i64 12753841065332862057, ; 548: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 323
	i64 12808034783427285688, ; 549: cs\StreamJsonRpc.resources => 0xb1bf47c69107d2b8 => 397
	i64 12823819093633476069, ; 550: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 364
	i64 12828192437253469131, ; 551: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 334
	i64 12835242264250840079, ; 552: System.IO.Pipes => 0xb21ff0d5d6c0740f => 55
	i64 12843321153144804894, ; 553: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 203
	i64 12843770487262409629, ; 554: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 555: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 77
	i64 12982280885948128408, ; 556: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 279
	i64 13063338879843259321, ; 557: Chaos.NaCl.dll => 0xb54a4d7fa99b53b9 => 175
	i64 13068258254871114833, ; 558: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 111
	i64 13072259076476491058, ; 559: tr\StreamJsonRpc.resources => 0xb569fe5ec941d532 => 407
	i64 13081516019875753442, ; 560: BouncyCastle.Crypto.dll => 0xb58ae182e046ade2 => 235
	i64 13129914918964716986, ; 561: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 283
	i64 13130412034557475351, ; 562: fr\Microsoft.VisualStudio.Threading.resources => 0xb638982d724ffa17 => 374
	i64 13157178012834139987, ; 563: Unique.NetApi.dll => 0xb697afb1658f0f53 => 249
	i64 13173818576982874404, ; 564: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 102
	i64 13221551921002590604, ; 565: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 338
	i64 13222659110913276082, ; 566: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 352
	i64 13231118467611766037, ; 567: ADRaffy.ENSNormalize.dll => 0xb79e6025131c2d15 => 173
	i64 13343850469010654401, ; 568: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 170
	i64 13370592475155966277, ; 569: System.Runtime.Serialization => 0xb98de304062ea945 => 115
	i64 13381594904270902445, ; 570: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 346
	i64 13401370062847626945, ; 571: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 318
	i64 13404347523447273790, ; 572: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 273
	i64 13431476299110033919, ; 573: System.Net.WebClient => 0xba663087f18829ff => 76
	i64 13454009404024712428, ; 574: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 329
	i64 13463706743370286408, ; 575: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 85
	i64 13465488254036897740, ; 576: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 331
	i64 13467053111158216594, ; 577: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 366
	i64 13491513212026656886, ; 578: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 266
	i64 13540124433173649601, ; 579: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 367
	i64 13545416393490209236, ; 580: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 350
	i64 13572454107664307259, ; 581: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 308
	i64 13578472628727169633, ; 582: System.Xml.XPath => 0xbc706ce9fba5c261 => 160
	i64 13580399111273692417, ; 583: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13593985998148071916, ; 584: UniqueryPlus.UniqueSubquery => 0xbca78a3dc53ff1ec => 253
	i64 13621154251410165619, ; 585: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 279
	i64 13647894001087880694, ; 586: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 587: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 259
	i64 13701887320514168088, ; 588: Nethereum.Model => 0xbe26e1ec1bad0518 => 225
	i64 13702626353344114072, ; 589: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 32
	i64 13703125838636057883, ; 590: Microsoft.VisualStudio.Validation.dll => 0xbe2b48591461051b => 213
	i64 13710614125866346983, ; 591: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 117
	i64 13713329104121190199, ; 592: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 37
	i64 13717397318615465333, ; 593: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13755568601956062840, ; 594: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 345
	i64 13768883594457632599, ; 595: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 52
	i64 13783605834077168009, ; 596: StrawberryShake.Core => 0xbf49347a382be189 => 238
	i64 13814445057219246765, ; 597: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 348
	i64 13828521679616088467, ; 598: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 332
	i64 13859681129916375842, ; 599: tr\Microsoft.VisualStudio.Validation.resources => 0xc0577a8e50d9a322 => 394
	i64 13868174827426508371, ; 600: Nethereum.Signer => 0xc075a7875fc56e53 => 228
	i64 13881769479078963060, ; 601: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13911222732217019342, ; 602: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 123
	i64 13921917134693230900, ; 603: Microsoft.AspNetCore.WebUtilities => 0xc13495df5dd06934 => 187
	i64 13928444506500929300, ; 604: System.Windows.dll => 0xc14bc67b8bba9714 => 154
	i64 13959074834287824816, ; 605: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 286
	i64 14075334701871371868, ; 606: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 131
	i64 14100563506285742564, ; 607: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 340
	i64 14124974489674258913, ; 608: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 268
	i64 14125464355221830302, ; 609: System.Threading.dll => 0xc407bafdbc707a9e => 148
	i64 14178052285788134900, ; 610: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 255
	i64 14212104595480609394, ; 611: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 120
	i64 14220608275227875801, ; 612: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 28
	i64 14226382999226559092, ; 613: System.ServiceProcess => 0xc56e43f6938e2a74 => 132
	i64 14232023429000439693, ; 614: System.Resources.Writer.dll => 0xc5824de7789ba78d => 100
	i64 14254574811015963973, ; 615: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 134
	i64 14261073672896646636, ; 616: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 306
	i64 14298246716367104064, ; 617: System.Web.dll => 0xc66d93a217f4e840 => 153
	i64 14327695147300244862, ; 618: System.Reflection.dll => 0xc6d632d338eb4d7e => 97
	i64 14327709162229390963, ; 619: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 125
	i64 14330684041385202088, ; 620: pt-BR/Microsoft.VisualStudio.Threading.resources.dll => 0xc6e0d1355b1fd1a8 => 379
	i64 14331727281556788554, ; 621: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 256
	i64 14346402571976470310, ; 622: System.Net.Ping.dll => 0xc718a920f3686f26 => 69
	i64 14370252628338276234, ; 623: tr/Microsoft.VisualStudio.Validation.resources.dll => 0xc76d64a0ecb9f78a => 394
	i64 14387433421514750621, ; 624: Nethereum.JsonRpc.RpcClient => 0xc7aa6e780ef83a9d => 222
	i64 14391267691003248864, ; 625: Nerdbank.Streams.dll => 0xc7b80db77dce00e0 => 215
	i64 14415297290983905433, ; 626: pt-BR\StreamJsonRpc.resources => 0xc80d6c82b8bf1899 => 405
	i64 14452298576064698508, ; 627: es\Microsoft.VisualStudio.Validation.resources => 0xc890e0fbbe38588c => 386
	i64 14461014870687870182, ; 628: System.Net.Requests.dll => 0xc8afd8683afdece6 => 72
	i64 14464374589798375073, ; 629: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 361
	i64 14486659737292545672, ; 630: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 291
	i64 14495724990987328804, ; 631: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 309
	i64 14496333109561400595, ; 632: Nethereum.Hex.dll => 0xc92d522885241d13 => 220
	i64 14522721392235705434, ; 633: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 342
	i64 14551742072151931844, ; 634: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 136
	i64 14561513370130550166, ; 635: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 124
	i64 14574160591280636898, ; 636: System.Net.Quic => 0xca41d1d72ec783e2 => 71
	i64 14622043554576106986, ; 637: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 111
	i64 14636892923918804708, ; 638: ja/StreamJsonRpc.resources.dll => 0xcb20b090919be6e4 => 402
	i64 14644440854989303794, ; 639: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 301
	i64 14669215534098758659, ; 640: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 192
	i64 14673799327870222115, ; 641: Nethereum.KeyStore.dll => 0xcba3cebe5b11ff23 => 223
	i64 14690985099581930927, ; 642: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 152
	i64 14705122255218365489, ; 643: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 353
	i64 14744092281598614090, ; 644: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 369
	i64 14753596820584604397, ; 645: zh-Hans/StreamJsonRpc.resources.dll => 0xccbf4e23f24722ed => 408
	i64 14792063746108907174, ; 646: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 329
	i64 14820817770416679739, ; 647: tr\Microsoft.VisualStudio.Threading.resources => 0xcdae1f3cf67bab3b => 381
	i64 14832630590065248058, ; 648: System.Security.Claims => 0xcdd816ef5d6e873a => 118
	i64 14852515768018889994, ; 649: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 277
	i64 14889905118082851278, ; 650: GoogleGson.dll => 0xcea391d0969961ce => 178
	i64 14892012299694389861, ; 651: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 370
	i64 14904040806490515477, ; 652: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 337
	i64 14912225920358050525, ; 653: System.Security.Principal.Windows => 0xcef2de7759506add => 127
	i64 14935719434541007538, ; 654: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 133
	i64 14954917835170835695, ; 655: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 193
	i64 14984936317414011727, ; 656: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 77
	i64 14987728460634540364, ; 657: System.IO.Compression.dll => 0xcfff1ba06622494c => 46
	i64 14988210264188246988, ; 658: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 280
	i64 15015154896917945444, ; 659: System.Net.Security.dll => 0xd0608bd33642dc64 => 73
	i64 15023260263817286165, ; 660: es/StreamJsonRpc.resources.dll => 0xd07d579d01121215 => 399
	i64 15023528575408771796, ; 661: ko\StreamJsonRpc.resources => 0xd07e4ba42a2b92d4 => 403
	i64 15024878362326791334, ; 662: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 63
	i64 15051741671811457419, ; 663: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0xd0e2874d8f44218b => 195
	i64 15071021337266399595, ; 664: System.Resources.Reader.dll => 0xd127060e7a18a96b => 98
	i64 15076659072870671916, ; 665: System.ObjectModel.dll => 0xd13b0d8c1620662c => 84
	i64 15078030747917693565, ; 666: pl/Microsoft.VisualStudio.Threading.resources.dll => 0xd13fed14120d327d => 378
	i64 15111608613780139878, ; 667: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 354
	i64 15115185479366240210, ; 668: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 43
	i64 15133485256822086103, ; 669: System.Linq.dll => 0xd204f0a9127dd9d7 => 61
	i64 15150743910298169673, ; 670: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 307
	i64 15201252454341482878, ; 671: ja\StreamJsonRpc.resources => 0xd2f5b2914a0f197e => 402
	i64 15227001540531775957, ; 672: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 190
	i64 15234786388537674379, ; 673: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 37
	i64 15249474349747396247, ; 674: zh-Hans\StreamJsonRpc.resources => 0xd3a104203c1fde97 => 408
	i64 15249922669345827832, ; 675: Substrate.NetApi => 0xd3a29bdec688ebf8 => 245
	i64 15250465174479574862, ; 676: System.Globalization.Calendars.dll => 0xd3a489469852174e => 40
	i64 15272359115529052076, ; 677: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 270
	i64 15279429628684179188, ; 678: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 335
	i64 15289998254359095052, ; 679: Substrate.PolkadotAssetHub.NET.NetApiExt.dll => 0xd430fc67076aa70c => 247
	i64 15299439993936780255, ; 680: System.Xml.XPath.dll => 0xd452879d55019bdf => 160
	i64 15338463749992804988, ; 681: System.Resources.Reader => 0xd4dd2b839286f27c => 98
	i64 15355525014752097055, ; 682: HotChocolate.Transport.Http.dll => 0xd519c8a4d3ec731f => 181
	i64 15370334346939861994, ; 683: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 275
	i64 15391712275433856905, ; 684: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 193
	i64 15476337370595579411, ; 685: Unique.NetApi => 0xd6c6fed76673d613 => 249
	i64 15526743539506359484, ; 686: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 135
	i64 15527772828719725935, ; 687: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 688: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 65
	i64 15536481058354060254, ; 689: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 341
	i64 15541854775306130054, ; 690: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 125
	i64 15557562860424774966, ; 691: System.Net.Sockets => 0xd7e790fe7a6dc536 => 75
	i64 15558627161509849899, ; 692: ru\Microsoft.VisualStudio.Validation.resources => 0xd7eb58f86289eb2b => 393
	i64 15582737692548360875, ; 693: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 299
	i64 15609085926864131306, ; 694: System.dll => 0xd89e9cf3334914ea => 164
	i64 15661133872274321916, ; 695: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 156
	i64 15664356999916475676, ; 696: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 341
	i64 15710114879900314733, ; 697: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15743187114543869802, ; 698: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 349
	i64 15750798694401567573, ; 699: ru\Microsoft.VisualStudio.Threading.resources => 0xda9613f6147deb55 => 380
	i64 15755368083429170162, ; 700: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 49
	i64 15777549416145007739, ; 701: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 313
	i64 15783653065526199428, ; 702: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 342
	i64 15798273207729320876, ; 703: Nethereum.Contracts.dll => 0xdb3ebdc79346f3ac => 219
	i64 15817206913877585035, ; 704: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 144
	i64 15847085070278954535, ; 705: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 139
	i64 15885744048853936810, ; 706: System.Resources.Writer => 0xdc75800bd0b6eaaa => 100
	i64 15903718333706527842, ; 707: zh-Hans/Microsoft.VisualStudio.Validation.resources.dll => 0xdcb55b902071e462 => 395
	i64 15928521404965645318, ; 708: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 204
	i64 15934062614519587357, ; 709: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 123
	i64 15937190497610202713, ; 710: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 120
	i64 15953812885175980916, ; 711: ko\Microsoft.VisualStudio.Validation.resources => 0xdd67544ac9f6d374 => 390
	i64 15963349826457351533, ; 712: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 142
	i64 15971679995444160383, ; 713: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 39
	i64 16018552496348375205, ; 714: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 68
	i64 16046481083542319511, ; 715: Microsoft.Extensions.ObjectPool => 0xdeb08d870f90b197 => 200
	i64 16054465462676478687, ; 716: System.Globalization.Extensions => 0xdecceb47319bdadf => 41
	i64 16091261637069827414, ; 717: ko/Microsoft.VisualStudio.Validation.resources.dll => 0xdf4fa534296aed56 => 390
	i64 16154507427712707110, ; 718: System => 0xe03056ea4e39aa26 => 164
	i64 16177821557421402585, ; 719: StreamJsonRpc => 0xe0832afe21c269d9 => 242
	i64 16193118668854841671, ; 720: Nethereum.Util.Rest.dll => 0xe0b983a26ed6d147 => 231
	i64 16219561732052121626, ; 721: System.Net.Security => 0xe1177575db7c781a => 73
	i64 16288847719894691167, ; 722: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 355
	i64 16315482530584035869, ; 723: WindowsBase.dll => 0xe26c3ceb1e8d821d => 165
	i64 16321164108206115771, ; 724: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 198
	i64 16337011941688632206, ; 725: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 127
	i64 16361933716545543812, ; 726: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 285
	i64 16423015068819898779, ; 727: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 334
	i64 16454459195343277943, ; 728: System.Net.NetworkInformation => 0xe459fb756d988f77 => 68
	i64 16496768397145114574, ; 729: Mono.Android.Export.dll => 0xe4f04b741db987ce => 169
	i64 16520416485536215268, ; 730: es\Microsoft.VisualStudio.Threading.resources => 0xe5444f43c1e4b0e4 => 373
	i64 16558262036769511634, ; 731: Microsoft.Extensions.Http => 0xe5cac397cf7b98d2 => 196
	i64 16582434033142728747, ; 732: Microsoft.NET.StringTools.dll => 0xe620a3e548d2082b => 211
	i64 16583419235299384312, ; 733: ko\Microsoft.VisualStudio.Threading.resources => 0xe62423ee89665bf8 => 377
	i64 16589693266713801121, ; 734: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 298
	i64 16621146507174665210, ; 735: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 272
	i64 16648892297579399389, ; 736: CommunityToolkit.Mvvm => 0xe70cbf55c4f508dd => 176
	i64 16649148416072044166, ; 737: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 209
	i64 16677317093839702854, ; 738: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 305
	i64 16702652415771857902, ; 739: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 151
	i64 16709499819875633724, ; 740: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 45
	i64 16737807731308835127, ; 741: System.Runtime.Intrinsics => 0xe848a3736f733137 => 108
	i64 16755897823358091934, ; 742: Substrate.NET.Schnorrkel => 0xe888e84b3600029e => 246
	i64 16758309481308491337, ; 743: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 48
	i64 16762783179241323229, ; 744: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 96
	i64 16765015072123548030, ; 745: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 31
	i64 16822611501064131242, ; 746: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 747: mscorlib => 0xe99c30c1484d7f4f => 166
	i64 16856067890322379635, ; 748: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16890310621557459193, ; 749: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 138
	i64 16933958494752847024, ; 750: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 78
	i64 16942731696432749159, ; 751: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 362
	i64 16957710066741199495, ; 752: Blake2Core.dll => 0xeb55e375bc2cc287 => 174
	i64 16977952268158210142, ; 753: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 54
	i64 16989020923549080504, ; 754: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 298
	i64 16998075588627545693, ; 755: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 303
	i64 17008137082415910100, ; 756: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17018932226584424969, ; 757: pt-BR\Microsoft.VisualStudio.Threading.resources => 0xec2f64b09e033209 => 379
	i64 17024911836938395553, ; 758: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 261
	i64 17031351772568316411, ; 759: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 302
	i64 17037200463775726619, ; 760: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 289
	i64 17062143951396181894, ; 761: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17089008752050867324, ; 762: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 369
	i64 17118171214553292978, ; 763: System.Threading.Channels => 0xed8ff6060fc420b2 => 139
	i64 17126545051278881272, ; 764: Microsoft.Net.Http.Headers.dll => 0xedadb5fbdb33b1f8 => 210
	i64 17180572832852637353, ; 765: es\StreamJsonRpc.resources => 0xee6da7f703e876a9 => 399
	i64 17187273293601214786, ; 766: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17201328579425343169, ; 767: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 768: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 122
	i64 17230721278011714856, ; 769: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 87
	i64 17234219099804750107, ; 770: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 149
	i64 17260702271250283638, ; 771: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17333249706306540043, ; 772: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 34
	i64 17338386382517543202, ; 773: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 79
	i64 17342750010158924305, ; 774: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 347
	i64 17346290192329067203, ; 775: zh-Hant\Microsoft.VisualStudio.Threading.resources => 0xf0ba67067c9dcac3 => 383
	i64 17360349973592121190, ; 776: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 327
	i64 17438153253682247751, ; 777: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 362
	i64 17470386307322966175, ; 778: System.Threading.Timer => 0xf27347c8d0d5709f => 147
	i64 17490334362188023649, ; 779: pl\Microsoft.VisualStudio.Validation.resources => 0xf2ba266f45068761 => 391
	i64 17494569545933355307, ; 780: PolkadotAssetHub.NetApi => 0xf2c9324fd3b9792b => 234
	i64 17509662556995089465, ; 781: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 80
	i64 17514990004910432069, ; 782: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 345
	i64 17522591619082469157, ; 783: GoogleGson => 0xf32cc03d27a5bf25 => 178
	i64 17590473451926037903, ; 784: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 254
	i64 17623389608345532001, ; 785: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 357
	i64 17627500474728259406, ; 786: System.Globalization => 0xf4a176498a351f4e => 42
	i64 17654540395087206531, ; 787: Blake2Core => 0xf50186f399f51883 => 174
	i64 17685921127322830888, ; 788: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17702523067201099846, ; 789: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 368
	i64 17704177640604968747, ; 790: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 300
	i64 17710060891934109755, ; 791: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 297
	i64 17712670374920797664, ; 792: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 107
	i64 17777860260071588075, ; 793: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 110
	i64 17801122059615118823, ; 794: Microsoft.VisualStudio.Threading.dll => 0xf70a4a32e6baa5e7 => 212
	i64 17838668724098252521, ; 795: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17891337867145587222, ; 796: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 330
	i64 17911643751311784505, ; 797: Microsoft.Net.Http.Headers => 0xf892f1178448ba39 => 210
	i64 17928294245072900555, ; 798: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 44
	i64 17992315986609351877, ; 799: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 161
	i64 18011505868640895076, ; 800: NBitcoin.Secp256k1 => 0xf9f5b92892344064 => 214
	i64 18025913125965088385, ; 801: System.Threading => 0xfa28e87b91334681 => 148
	i64 18099568558057551825, ; 802: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 356
	i64 18116111925905154859, ; 803: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 266
	i64 18121036031235206392, ; 804: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 302
	i64 18123834358115542242, ; 805: fr/StreamJsonRpc.resources.dll => 0xfb84cb53137f24e2 => 400
	i64 18125419917187316951, ; 806: PolkadotAssetHub.NetApi.dll => 0xfb8a6d61d0bd7cd7 => 234
	i64 18146411883821974900, ; 807: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 38
	i64 18146811631844267958, ; 808: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18166800034629147097, ; 809: ru\StreamJsonRpc.resources => 0xfc1d7061319fd9d9 => 406
	i64 18171003490741864161, ; 810: MessagePack => 0xfc2c5f66960d46e1 => 185
	i64 18225059387460068507, ; 811: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 146
	i64 18235425150366993799, ; 812: ADRaffy.ENSNormalize => 0xfd113e8f0fd94d87 => 173
	i64 18245806341561545090, ; 813: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 814: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 283
	i64 18299924363001599681, ; 815: StrawberryShake.Transport.Http => 0xfdf66440413a16c1 => 240
	i64 18305135509493619199, ; 816: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 304
	i64 18318849532986632368, ; 817: System.Security.dll => 0xfe39a097c37fa8b0 => 130
	i64 18324163916253801303, ; 818: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 351
	i64 18329231262211705199, ; 819: Chaos.NaCl => 0xfe5e82b8761d096f => 175
	i64 18380184030268848184, ; 820: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 320
	i64 18439108438687598470 ; 821: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 94
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [822 x i32] [
	i32 381, ; 0
	i32 282, ; 1
	i32 203, ; 2
	i32 180, ; 3
	i32 171, ; 4
	i32 208, ; 5
	i32 58, ; 6
	i32 269, ; 7
	i32 151, ; 8
	i32 310, ; 9
	i32 182, ; 10
	i32 183, ; 11
	i32 313, ; 12
	i32 250, ; 13
	i32 276, ; 14
	i32 132, ; 15
	i32 202, ; 16
	i32 389, ; 17
	i32 56, ; 18
	i32 312, ; 19
	i32 242, ; 20
	i32 200, ; 21
	i32 344, ; 22
	i32 95, ; 23
	i32 236, ; 24
	i32 295, ; 25
	i32 129, ; 26
	i32 191, ; 27
	i32 377, ; 28
	i32 145, ; 29
	i32 270, ; 30
	i32 18, ; 31
	i32 395, ; 32
	i32 218, ; 33
	i32 347, ; 34
	i32 281, ; 35
	i32 296, ; 36
	i32 150, ; 37
	i32 104, ; 38
	i32 95, ; 39
	i32 325, ; 40
	i32 355, ; 41
	i32 396, ; 42
	i32 382, ; 43
	i32 36, ; 44
	i32 28, ; 45
	i32 265, ; 46
	i32 230, ; 47
	i32 303, ; 48
	i32 50, ; 49
	i32 115, ; 50
	i32 70, ; 51
	i32 205, ; 52
	i32 65, ; 53
	i32 170, ; 54
	i32 145, ; 55
	i32 353, ; 56
	i32 324, ; 57
	i32 264, ; 58
	i32 299, ; 59
	i32 289, ; 60
	i32 40, ; 61
	i32 89, ; 62
	i32 375, ; 63
	i32 81, ; 64
	i32 230, ; 65
	i32 233, ; 66
	i32 66, ; 67
	i32 62, ; 68
	i32 86, ; 69
	i32 263, ; 70
	i32 106, ; 71
	i32 343, ; 72
	i32 310, ; 73
	i32 102, ; 74
	i32 188, ; 75
	i32 35, ; 76
	i32 260, ; 77
	i32 365, ; 78
	i32 312, ; 79
	i32 206, ; 80
	i32 176, ; 81
	i32 365, ; 82
	i32 119, ; 83
	i32 297, ; 84
	i32 339, ; 85
	i32 357, ; 86
	i32 142, ; 87
	i32 141, ; 88
	i32 333, ; 89
	i32 53, ; 90
	i32 35, ; 91
	i32 141, ; 92
	i32 233, ; 93
	i32 384, ; 94
	i32 257, ; 95
	i32 267, ; 96
	i32 199, ; 97
	i32 221, ; 98
	i32 281, ; 99
	i32 392, ; 100
	i32 8, ; 101
	i32 14, ; 102
	i32 361, ; 103
	i32 309, ; 104
	i32 51, ; 105
	i32 292, ; 106
	i32 136, ; 107
	i32 101, ; 108
	i32 274, ; 109
	i32 221, ; 110
	i32 319, ; 111
	i32 116, ; 112
	i32 258, ; 113
	i32 163, ; 114
	i32 364, ; 115
	i32 166, ; 116
	i32 67, ; 117
	i32 245, ; 118
	i32 241, ; 119
	i32 192, ; 120
	i32 339, ; 121
	i32 219, ; 122
	i32 80, ; 123
	i32 179, ; 124
	i32 101, ; 125
	i32 314, ; 126
	i32 231, ; 127
	i32 117, ; 128
	i32 385, ; 129
	i32 344, ; 130
	i32 326, ; 131
	i32 383, ; 132
	i32 398, ; 133
	i32 78, ; 134
	i32 325, ; 135
	i32 239, ; 136
	i32 114, ; 137
	i32 121, ; 138
	i32 48, ; 139
	i32 128, ; 140
	i32 290, ; 141
	i32 261, ; 142
	i32 82, ; 143
	i32 110, ; 144
	i32 75, ; 145
	i32 336, ; 146
	i32 378, ; 147
	i32 208, ; 148
	i32 53, ; 149
	i32 316, ; 150
	i32 189, ; 151
	i32 69, ; 152
	i32 315, ; 153
	i32 83, ; 154
	i32 172, ; 155
	i32 181, ; 156
	i32 359, ; 157
	i32 116, ; 158
	i32 190, ; 159
	i32 156, ; 160
	i32 189, ; 161
	i32 255, ; 162
	i32 217, ; 163
	i32 387, ; 164
	i32 177, ; 165
	i32 167, ; 166
	i32 308, ; 167
	i32 282, ; 168
	i32 197, ; 169
	i32 32, ; 170
	i32 185, ; 171
	i32 184, ; 172
	i32 206, ; 173
	i32 122, ; 174
	i32 72, ; 175
	i32 62, ; 176
	i32 161, ; 177
	i32 113, ; 178
	i32 186, ; 179
	i32 88, ; 180
	i32 204, ; 181
	i32 370, ; 182
	i32 105, ; 183
	i32 18, ; 184
	i32 146, ; 185
	i32 118, ; 186
	i32 58, ; 187
	i32 276, ; 188
	i32 17, ; 189
	i32 52, ; 190
	i32 92, ; 191
	i32 367, ; 192
	i32 55, ; 193
	i32 129, ; 194
	i32 232, ; 195
	i32 152, ; 196
	i32 41, ; 197
	i32 92, ; 198
	i32 320, ; 199
	i32 239, ; 200
	i32 387, ; 201
	i32 196, ; 202
	i32 50, ; 203
	i32 337, ; 204
	i32 243, ; 205
	i32 162, ; 206
	i32 409, ; 207
	i32 13, ; 208
	i32 294, ; 209
	i32 179, ; 210
	i32 258, ; 211
	i32 315, ; 212
	i32 36, ; 213
	i32 67, ; 214
	i32 109, ; 215
	i32 227, ; 216
	i32 391, ; 217
	i32 375, ; 218
	i32 243, ; 219
	i32 259, ; 220
	i32 371, ; 221
	i32 99, ; 222
	i32 99, ; 223
	i32 11, ; 224
	i32 187, ; 225
	i32 0, ; 226
	i32 11, ; 227
	i32 301, ; 228
	i32 246, ; 229
	i32 25, ; 230
	i32 128, ; 231
	i32 76, ; 232
	i32 293, ; 233
	i32 109, ; 234
	i32 319, ; 235
	i32 317, ; 236
	i32 106, ; 237
	i32 384, ; 238
	i32 2, ; 239
	i32 26, ; 240
	i32 272, ; 241
	i32 157, ; 242
	i32 363, ; 243
	i32 212, ; 244
	i32 21, ; 245
	i32 366, ; 246
	i32 225, ; 247
	i32 49, ; 248
	i32 217, ; 249
	i32 43, ; 250
	i32 126, ; 251
	i32 262, ; 252
	i32 59, ; 253
	i32 386, ; 254
	i32 119, ; 255
	i32 213, ; 256
	i32 405, ; 257
	i32 322, ; 258
	i32 216, ; 259
	i32 285, ; 260
	i32 271, ; 261
	i32 3, ; 262
	i32 398, ; 263
	i32 291, ; 264
	i32 404, ; 265
	i32 311, ; 266
	i32 38, ; 267
	i32 124, ; 268
	i32 194, ; 269
	i32 360, ; 270
	i32 216, ; 271
	i32 311, ; 272
	i32 360, ; 273
	i32 137, ; 274
	i32 149, ; 275
	i32 85, ; 276
	i32 90, ; 277
	i32 400, ; 278
	i32 295, ; 279
	i32 410, ; 280
	i32 292, ; 281
	i32 397, ; 282
	i32 348, ; 283
	i32 267, ; 284
	i32 177, ; 285
	i32 247, ; 286
	i32 278, ; 287
	i32 323, ; 288
	i32 201, ; 289
	i32 328, ; 290
	i32 293, ; 291
	i32 133, ; 292
	i32 238, ; 293
	i32 214, ; 294
	i32 371, ; 295
	i32 96, ; 296
	i32 407, ; 297
	i32 3, ; 298
	i32 356, ; 299
	i32 105, ; 300
	i32 359, ; 301
	i32 33, ; 302
	i32 154, ; 303
	i32 158, ; 304
	i32 155, ; 305
	i32 82, ; 306
	i32 287, ; 307
	i32 143, ; 308
	i32 229, ; 309
	i32 87, ; 310
	i32 19, ; 311
	i32 288, ; 312
	i32 51, ; 313
	i32 257, ; 314
	i32 237, ; 315
	i32 363, ; 316
	i32 61, ; 317
	i32 54, ; 318
	i32 218, ; 319
	i32 226, ; 320
	i32 4, ; 321
	i32 97, ; 322
	i32 256, ; 323
	i32 17, ; 324
	i32 0, ; 325
	i32 227, ; 326
	i32 155, ; 327
	i32 84, ; 328
	i32 392, ; 329
	i32 29, ; 330
	i32 45, ; 331
	i32 244, ; 332
	i32 64, ; 333
	i32 388, ; 334
	i32 66, ; 335
	i32 354, ; 336
	i32 172, ; 337
	i32 296, ; 338
	i32 1, ; 339
	i32 331, ; 340
	i32 47, ; 341
	i32 24, ; 342
	i32 264, ; 343
	i32 195, ; 344
	i32 376, ; 345
	i32 180, ; 346
	i32 165, ; 347
	i32 108, ; 348
	i32 406, ; 349
	i32 12, ; 350
	i32 290, ; 351
	i32 63, ; 352
	i32 27, ; 353
	i32 229, ; 354
	i32 23, ; 355
	i32 93, ; 356
	i32 168, ; 357
	i32 12, ; 358
	i32 335, ; 359
	i32 404, ; 360
	i32 372, ; 361
	i32 209, ; 362
	i32 29, ; 363
	i32 103, ; 364
	i32 14, ; 365
	i32 126, ; 366
	i32 273, ; 367
	i32 305, ; 368
	i32 91, ; 369
	i32 294, ; 370
	i32 9, ; 371
	i32 86, ; 372
	i32 376, ; 373
	i32 284, ; 374
	i32 317, ; 375
	i32 358, ; 376
	i32 71, ; 377
	i32 168, ; 378
	i32 226, ; 379
	i32 1, ; 380
	i32 304, ; 381
	i32 5, ; 382
	i32 358, ; 383
	i32 183, ; 384
	i32 44, ; 385
	i32 27, ; 386
	i32 182, ; 387
	i32 388, ; 388
	i32 252, ; 389
	i32 194, ; 390
	i32 332, ; 391
	i32 373, ; 392
	i32 158, ; 393
	i32 307, ; 394
	i32 112, ; 395
	i32 240, ; 396
	i32 235, ; 397
	i32 368, ; 398
	i32 252, ; 399
	i32 121, ; 400
	i32 224, ; 401
	i32 401, ; 402
	i32 322, ; 403
	i32 263, ; 404
	i32 159, ; 405
	i32 184, ; 406
	i32 131, ; 407
	i32 327, ; 408
	i32 57, ; 409
	i32 385, ; 410
	i32 138, ; 411
	i32 83, ; 412
	i32 30, ; 413
	i32 274, ; 414
	i32 401, ; 415
	i32 10, ; 416
	i32 236, ; 417
	i32 215, ; 418
	i32 324, ; 419
	i32 223, ; 420
	i32 171, ; 421
	i32 271, ; 422
	i32 150, ; 423
	i32 94, ; 424
	i32 389, ; 425
	i32 284, ; 426
	i32 60, ; 427
	i32 207, ; 428
	i32 157, ; 429
	i32 343, ; 430
	i32 199, ; 431
	i32 64, ; 432
	i32 88, ; 433
	i32 79, ; 434
	i32 47, ; 435
	i32 205, ; 436
	i32 143, ; 437
	i32 340, ; 438
	i32 191, ; 439
	i32 333, ; 440
	i32 278, ; 441
	i32 74, ; 442
	i32 91, ; 443
	i32 330, ; 444
	i32 135, ; 445
	i32 90, ; 446
	i32 316, ; 447
	i32 244, ; 448
	i32 336, ; 449
	i32 275, ; 450
	i32 188, ; 451
	i32 241, ; 452
	i32 338, ; 453
	i32 112, ; 454
	i32 42, ; 455
	i32 159, ; 456
	i32 4, ; 457
	i32 103, ; 458
	i32 251, ; 459
	i32 70, ; 460
	i32 202, ; 461
	i32 60, ; 462
	i32 39, ; 463
	i32 265, ; 464
	i32 153, ; 465
	i32 56, ; 466
	i32 34, ; 467
	i32 198, ; 468
	i32 207, ; 469
	i32 262, ; 470
	i32 21, ; 471
	i32 163, ; 472
	i32 328, ; 473
	i32 186, ; 474
	i32 349, ; 475
	i32 326, ; 476
	i32 321, ; 477
	i32 140, ; 478
	i32 352, ; 479
	i32 201, ; 480
	i32 89, ; 481
	i32 147, ; 482
	i32 277, ; 483
	i32 162, ; 484
	i32 396, ; 485
	i32 306, ; 486
	i32 6, ; 487
	i32 169, ; 488
	i32 31, ; 489
	i32 224, ; 490
	i32 251, ; 491
	i32 380, ; 492
	i32 374, ; 493
	i32 107, ; 494
	i32 287, ; 495
	i32 248, ; 496
	i32 350, ; 497
	i32 321, ; 498
	i32 197, ; 499
	i32 260, ; 500
	i32 314, ; 501
	i32 167, ; 502
	i32 288, ; 503
	i32 140, ; 504
	i32 346, ; 505
	i32 59, ; 506
	i32 144, ; 507
	i32 222, ; 508
	i32 382, ; 509
	i32 250, ; 510
	i32 403, ; 511
	i32 232, ; 512
	i32 253, ; 513
	i32 81, ; 514
	i32 74, ; 515
	i32 130, ; 516
	i32 25, ; 517
	i32 7, ; 518
	i32 93, ; 519
	i32 318, ; 520
	i32 137, ; 521
	i32 220, ; 522
	i32 254, ; 523
	i32 113, ; 524
	i32 9, ; 525
	i32 248, ; 526
	i32 104, ; 527
	i32 19, ; 528
	i32 286, ; 529
	i32 300, ; 530
	i32 410, ; 531
	i32 409, ; 532
	i32 280, ; 533
	i32 33, ; 534
	i32 268, ; 535
	i32 46, ; 536
	i32 393, ; 537
	i32 237, ; 538
	i32 372, ; 539
	i32 228, ; 540
	i32 351, ; 541
	i32 30, ; 542
	i32 269, ; 543
	i32 57, ; 544
	i32 134, ; 545
	i32 114, ; 546
	i32 211, ; 547
	i32 323, ; 548
	i32 397, ; 549
	i32 364, ; 550
	i32 334, ; 551
	i32 55, ; 552
	i32 203, ; 553
	i32 6, ; 554
	i32 77, ; 555
	i32 279, ; 556
	i32 175, ; 557
	i32 111, ; 558
	i32 407, ; 559
	i32 235, ; 560
	i32 283, ; 561
	i32 374, ; 562
	i32 249, ; 563
	i32 102, ; 564
	i32 338, ; 565
	i32 352, ; 566
	i32 173, ; 567
	i32 170, ; 568
	i32 115, ; 569
	i32 346, ; 570
	i32 318, ; 571
	i32 273, ; 572
	i32 76, ; 573
	i32 329, ; 574
	i32 85, ; 575
	i32 331, ; 576
	i32 366, ; 577
	i32 266, ; 578
	i32 367, ; 579
	i32 350, ; 580
	i32 308, ; 581
	i32 160, ; 582
	i32 2, ; 583
	i32 253, ; 584
	i32 279, ; 585
	i32 24, ; 586
	i32 259, ; 587
	i32 225, ; 588
	i32 32, ; 589
	i32 213, ; 590
	i32 117, ; 591
	i32 37, ; 592
	i32 16, ; 593
	i32 345, ; 594
	i32 52, ; 595
	i32 238, ; 596
	i32 348, ; 597
	i32 332, ; 598
	i32 394, ; 599
	i32 228, ; 600
	i32 20, ; 601
	i32 123, ; 602
	i32 187, ; 603
	i32 154, ; 604
	i32 286, ; 605
	i32 131, ; 606
	i32 340, ; 607
	i32 268, ; 608
	i32 148, ; 609
	i32 255, ; 610
	i32 120, ; 611
	i32 28, ; 612
	i32 132, ; 613
	i32 100, ; 614
	i32 134, ; 615
	i32 306, ; 616
	i32 153, ; 617
	i32 97, ; 618
	i32 125, ; 619
	i32 379, ; 620
	i32 256, ; 621
	i32 69, ; 622
	i32 394, ; 623
	i32 222, ; 624
	i32 215, ; 625
	i32 405, ; 626
	i32 386, ; 627
	i32 72, ; 628
	i32 361, ; 629
	i32 291, ; 630
	i32 309, ; 631
	i32 220, ; 632
	i32 342, ; 633
	i32 136, ; 634
	i32 124, ; 635
	i32 71, ; 636
	i32 111, ; 637
	i32 402, ; 638
	i32 301, ; 639
	i32 192, ; 640
	i32 223, ; 641
	i32 152, ; 642
	i32 353, ; 643
	i32 369, ; 644
	i32 408, ; 645
	i32 329, ; 646
	i32 381, ; 647
	i32 118, ; 648
	i32 277, ; 649
	i32 178, ; 650
	i32 370, ; 651
	i32 337, ; 652
	i32 127, ; 653
	i32 133, ; 654
	i32 193, ; 655
	i32 77, ; 656
	i32 46, ; 657
	i32 280, ; 658
	i32 73, ; 659
	i32 399, ; 660
	i32 403, ; 661
	i32 63, ; 662
	i32 195, ; 663
	i32 98, ; 664
	i32 84, ; 665
	i32 378, ; 666
	i32 354, ; 667
	i32 43, ; 668
	i32 61, ; 669
	i32 307, ; 670
	i32 402, ; 671
	i32 190, ; 672
	i32 37, ; 673
	i32 408, ; 674
	i32 245, ; 675
	i32 40, ; 676
	i32 270, ; 677
	i32 335, ; 678
	i32 247, ; 679
	i32 160, ; 680
	i32 98, ; 681
	i32 181, ; 682
	i32 275, ; 683
	i32 193, ; 684
	i32 249, ; 685
	i32 135, ; 686
	i32 20, ; 687
	i32 65, ; 688
	i32 341, ; 689
	i32 125, ; 690
	i32 75, ; 691
	i32 393, ; 692
	i32 299, ; 693
	i32 164, ; 694
	i32 156, ; 695
	i32 341, ; 696
	i32 5, ; 697
	i32 349, ; 698
	i32 380, ; 699
	i32 49, ; 700
	i32 313, ; 701
	i32 342, ; 702
	i32 219, ; 703
	i32 144, ; 704
	i32 139, ; 705
	i32 100, ; 706
	i32 395, ; 707
	i32 204, ; 708
	i32 123, ; 709
	i32 120, ; 710
	i32 390, ; 711
	i32 142, ; 712
	i32 39, ; 713
	i32 68, ; 714
	i32 200, ; 715
	i32 41, ; 716
	i32 390, ; 717
	i32 164, ; 718
	i32 242, ; 719
	i32 231, ; 720
	i32 73, ; 721
	i32 355, ; 722
	i32 165, ; 723
	i32 198, ; 724
	i32 127, ; 725
	i32 285, ; 726
	i32 334, ; 727
	i32 68, ; 728
	i32 169, ; 729
	i32 373, ; 730
	i32 196, ; 731
	i32 211, ; 732
	i32 377, ; 733
	i32 298, ; 734
	i32 272, ; 735
	i32 176, ; 736
	i32 209, ; 737
	i32 305, ; 738
	i32 151, ; 739
	i32 45, ; 740
	i32 108, ; 741
	i32 246, ; 742
	i32 48, ; 743
	i32 96, ; 744
	i32 31, ; 745
	i32 23, ; 746
	i32 166, ; 747
	i32 22, ; 748
	i32 138, ; 749
	i32 78, ; 750
	i32 362, ; 751
	i32 174, ; 752
	i32 54, ; 753
	i32 298, ; 754
	i32 303, ; 755
	i32 10, ; 756
	i32 379, ; 757
	i32 261, ; 758
	i32 302, ; 759
	i32 289, ; 760
	i32 16, ; 761
	i32 369, ; 762
	i32 139, ; 763
	i32 210, ; 764
	i32 399, ; 765
	i32 13, ; 766
	i32 15, ; 767
	i32 122, ; 768
	i32 87, ; 769
	i32 149, ; 770
	i32 22, ; 771
	i32 34, ; 772
	i32 79, ; 773
	i32 347, ; 774
	i32 383, ; 775
	i32 327, ; 776
	i32 362, ; 777
	i32 147, ; 778
	i32 391, ; 779
	i32 234, ; 780
	i32 80, ; 781
	i32 345, ; 782
	i32 178, ; 783
	i32 254, ; 784
	i32 357, ; 785
	i32 42, ; 786
	i32 174, ; 787
	i32 26, ; 788
	i32 368, ; 789
	i32 300, ; 790
	i32 297, ; 791
	i32 107, ; 792
	i32 110, ; 793
	i32 212, ; 794
	i32 7, ; 795
	i32 330, ; 796
	i32 210, ; 797
	i32 44, ; 798
	i32 161, ; 799
	i32 214, ; 800
	i32 148, ; 801
	i32 356, ; 802
	i32 266, ; 803
	i32 302, ; 804
	i32 400, ; 805
	i32 234, ; 806
	i32 38, ; 807
	i32 15, ; 808
	i32 406, ; 809
	i32 185, ; 810
	i32 146, ; 811
	i32 173, ; 812
	i32 8, ; 813
	i32 283, ; 814
	i32 240, ; 815
	i32 304, ; 816
	i32 130, ; 817
	i32 351, ; 818
	i32 175, ; 819
	i32 320, ; 820
	i32 94 ; 821
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

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
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}

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

@assembly_image_cache = dso_local local_unnamed_addr global [343 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [680 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 253
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 287
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 145
	i32 52462236, ; 8: ZambaDistributeurATM.dll => 0x320829c => 0
	i32 57725457, ; 9: it\Microsoft.Data.SqlClient.resources => 0x370d211 => 298
	i32 57727992, ; 10: ja\Microsoft.Data.SqlClient.resources => 0x370dbf8 => 299
	i32 66541672, ; 11: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 12: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 338
	i32 68219467, ; 13: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 14: Microsoft.Maui.Graphics.dll => 0x44bb714 => 203
	i32 82292897, ; 15: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 16: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 271
	i32 117431740, ; 17: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 18: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 271
	i32 122350210, ; 19: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 20: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 291
	i32 139659294, ; 21: ja/Microsoft.Data.SqlClient.resources.dll => 0x853081e => 299
	i32 142721839, ; 22: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 23: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 24: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 25: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 227
	i32 166535111, ; 26: ru/Microsoft.Data.SqlClient.resources.dll => 0x9ed1fc7 => 302
	i32 176265551, ; 27: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 28: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 273
	i32 184328833, ; 29: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 30: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 335
	i32 199333315, ; 31: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 336
	i32 205061960, ; 32: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 33: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 225
	i32 220171995, ; 34: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 35: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 247
	i32 230752869, ; 36: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 37: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 38: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 39: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 40: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 230
	i32 264223668, ; 41: zh-Hans\Microsoft.Data.SqlClient.resources => 0xfbfbbb4 => 303
	i32 276479776, ; 42: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 43: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 249
	i32 280482487, ; 44: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 246
	i32 280992041, ; 45: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 307
	i32 291076382, ; 46: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 47: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 48: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 335
	i32 318968648, ; 49: Xamarin.AndroidX.Activity.dll => 0x13031348 => 216
	i32 321597661, ; 50: System.Numerics => 0x132b30dd => 83
	i32 330147069, ; 51: Microsoft.SqlServer.Server => 0x13ada4fd => 204
	i32 336156722, ; 52: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 320
	i32 342366114, ; 53: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 248
	i32 356389973, ; 54: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 319
	i32 360082299, ; 55: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 56: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 57: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 58: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 59: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 60: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 61: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 62: _Microsoft.Android.Resource.Designer => 0x17969339 => 339
	i32 403441872, ; 63: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 64: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 331
	i32 441335492, ; 65: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 231
	i32 442565967, ; 66: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 67: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 244
	i32 451504562, ; 68: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 69: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 70: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 71: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 72: System.dll => 0x1bff388e => 164
	i32 476646585, ; 73: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 246
	i32 485463106, ; 74: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 192
	i32 486930444, ; 75: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 259
	i32 498788369, ; 76: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 77: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 318
	i32 503918385, ; 78: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 312
	i32 513247710, ; 79: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 189
	i32 526420162, ; 80: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 81: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 291
	i32 530272170, ; 82: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 83: Microsoft.Extensions.Logging => 0x20216150 => 185
	i32 540030774, ; 84: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 85: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 86: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 548916678, ; 87: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 179
	i32 549171840, ; 88: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 89: Jsr305Binding => 0x213954e7 => 284
	i32 569601784, ; 90: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 282
	i32 577335427, ; 91: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 92: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 326
	i32 597488923, ; 93: CommunityToolkit.Maui => 0x239cf51b => 175
	i32 601371474, ; 94: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 95: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 96: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 97: Xamarin.AndroidX.CustomView => 0x2568904f => 236
	i32 627931235, ; 98: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 324
	i32 639843206, ; 99: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 242
	i32 643868501, ; 100: System.Net => 0x2660a755 => 81
	i32 662205335, ; 101: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 102: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 278
	i32 666292255, ; 103: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 223
	i32 672442732, ; 104: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 105: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 106: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 306
	i32 690569205, ; 107: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 108: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 293
	i32 693804605, ; 109: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 110: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 111: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 288
	i32 700358131, ; 112: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 113: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 321
	i32 709557578, ; 114: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 309
	i32 720511267, ; 115: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 292
	i32 722857257, ; 116: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 723796036, ; 117: System.ClientModel.dll => 0x2b244044 => 205
	i32 735137430, ; 118: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 119: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 120: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 213
	i32 759454413, ; 121: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 122: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 123: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 124: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 330
	i32 789151979, ; 125: Microsoft.Extensions.Options => 0x2f0980eb => 188
	i32 790371945, ; 126: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 237
	i32 804715423, ; 127: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 128: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 251
	i32 823281589, ; 129: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 130: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 131: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 132: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 133: Xamarin.AndroidX.Print => 0x3246f6cd => 264
	i32 873119928, ; 134: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 135: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 136: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 137: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 138: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 139: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 333
	i32 928116545, ; 140: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 287
	i32 952186615, ; 141: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 142: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 292
	i32 966729478, ; 143: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 285
	i32 967690846, ; 144: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 248
	i32 975236339, ; 145: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 146: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 147: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 148: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 149: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 150: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 151: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 152: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 268
	i32 1019214401, ; 153: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 154: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 184
	i32 1029334545, ; 155: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 308
	i32 1031528504, ; 156: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 286
	i32 1035644815, ; 157: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 221
	i32 1036536393, ; 158: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 159: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1048439329, ; 160: de/Microsoft.Data.SqlClient.resources.dll => 0x3e7dea21 => 295
	i32 1052210849, ; 161: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 255
	i32 1062017875, ; 162: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 191
	i32 1067306892, ; 163: GoogleGson => 0x3f9dcf8c => 178
	i32 1082857460, ; 164: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 165: Xamarin.Kotlin.StdLib => 0x409e66d8 => 289
	i32 1089913930, ; 166: System.Diagnostics.EventLog.dll => 0x40f6c44a => 207
	i32 1098259244, ; 167: System => 0x41761b2c => 164
	i32 1118262833, ; 168: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 321
	i32 1121599056, ; 169: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 254
	i32 1127624469, ; 170: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 187
	i32 1138436374, ; 171: Microsoft.Data.SqlClient.dll => 0x43db2916 => 180
	i32 1149092582, ; 172: Xamarin.AndroidX.Window => 0x447dc2e6 => 281
	i32 1168523401, ; 173: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 327
	i32 1170634674, ; 174: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 175: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 277
	i32 1178241025, ; 176: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 262
	i32 1203215381, ; 177: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 325
	i32 1204270330, ; 178: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 223
	i32 1208641965, ; 179: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1214827643, ; 180: CommunityToolkit.Mvvm => 0x4868cc7b => 177
	i32 1219128291, ; 181: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 182: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 323
	i32 1243150071, ; 183: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 282
	i32 1253011324, ; 184: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 185: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 307
	i32 1264511973, ; 186: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 272
	i32 1267360935, ; 187: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 276
	i32 1273260888, ; 188: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 228
	i32 1275534314, ; 189: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 293
	i32 1278448581, ; 190: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 220
	i32 1293217323, ; 191: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 239
	i32 1309188875, ; 192: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 193: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 281
	i32 1324164729, ; 194: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 195: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 196: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 197: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 337
	i32 1376866003, ; 198: Xamarin.AndroidX.SavedState => 0x52114ed3 => 268
	i32 1379779777, ; 199: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 200: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 201: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 232
	i32 1408764838, ; 202: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 203: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 204: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 205: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 305
	i32 1434145427, ; 206: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 207: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 285
	i32 1439761251, ; 208: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 209: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 210: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 211: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 212: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1460893475, ; 213: System.IdentityModel.Tokens.Jwt => 0x57137723 => 208
	i32 1461004990, ; 214: es\Microsoft.Maui.Controls.resources => 0x57152abe => 311
	i32 1461234159, ; 215: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 216: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 217: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 218: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 222
	i32 1470490898, ; 219: Microsoft.Extensions.Primitives => 0x57a5e912 => 189
	i32 1479771757, ; 220: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 221: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 222: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 223: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 269
	i32 1493001747, ; 224: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 315
	i32 1498168481, ; 225: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 193
	i32 1514721132, ; 226: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 310
	i32 1536373174, ; 227: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 228: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 229: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 230: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 231: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 330
	i32 1565310744, ; 232: System.Runtime.Caching => 0x5d4cbf18 => 210
	i32 1565862583, ; 233: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 234: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 235: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 236: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582305585, ; 237: Azure.Identity => 0x5e501131 => 174
	i32 1582372066, ; 238: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 238
	i32 1592978981, ; 239: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1596263029, ; 240: zh-Hant\Microsoft.Data.SqlClient.resources => 0x5f250a75 => 304
	i32 1597949149, ; 241: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 286
	i32 1601112923, ; 242: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 243: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 244: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 245: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 258
	i32 1622358360, ; 246: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 247: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 280
	i32 1628113371, ; 248: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 196
	i32 1634654947, ; 249: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 176
	i32 1635184631, ; 250: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 242
	i32 1636350590, ; 251: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 235
	i32 1639515021, ; 252: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 253: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 254: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 255: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 256: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 274
	i32 1658251792, ; 257: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 283
	i32 1670060433, ; 258: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 230
	i32 1675553242, ; 259: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 260: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 261: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 262: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 263: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 264: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 265: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 290
	i32 1701541528, ; 266: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 267: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 251
	i32 1726116996, ; 268: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 269: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 270: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 226
	i32 1736233607, ; 271: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 328
	i32 1743415430, ; 272: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 306
	i32 1744735666, ; 273: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 274: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 275: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 276: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 277: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 278: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 279: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 273
	i32 1770582343, ; 280: Microsoft.Extensions.Logging.dll => 0x6988f147 => 185
	i32 1776026572, ; 281: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 282: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 283: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 284: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 322
	i32 1788241197, ; 285: Xamarin.AndroidX.Fragment => 0x6a96652d => 244
	i32 1793755602, ; 286: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 314
	i32 1794500907, ; 287: Microsoft.Identity.Client.dll => 0x6af5e92b => 190
	i32 1796167890, ; 288: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 179
	i32 1808609942, ; 289: Xamarin.AndroidX.Loader => 0x6bcd3296 => 258
	i32 1813058853, ; 290: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 289
	i32 1813201214, ; 291: Xamarin.Google.Android.Material => 0x6c13413e => 283
	i32 1818569960, ; 292: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 263
	i32 1818787751, ; 293: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 294: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 295: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 296: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 186
	i32 1842015223, ; 297: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 334
	i32 1847515442, ; 298: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 213
	i32 1853025655, ; 299: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 331
	i32 1858542181, ; 300: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 301: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1871986876, ; 302: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 196
	i32 1875935024, ; 303: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 313
	i32 1879696579, ; 304: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 305: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 224
	i32 1888955245, ; 306: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 307: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 308: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 309: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 310: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 311: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 312: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 313: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 270
	i32 1968388702, ; 314: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 181
	i32 1983156543, ; 315: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 290
	i32 1985761444, ; 316: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 215
	i32 1986222447, ; 317: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 197
	i32 2003115576, ; 318: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 310
	i32 2011961780, ; 319: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 320: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 255
	i32 2025202353, ; 321: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 305
	i32 2031763787, ; 322: Xamarin.Android.Glide => 0x791a414b => 212
	i32 2040764568, ; 323: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 191
	i32 2045470958, ; 324: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 325: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 250
	i32 2060060697, ; 326: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 327: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 309
	i32 2070888862, ; 328: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 329: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 330: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 331: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 332: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 333: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 334: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 335: Microsoft.Maui => 0x80bd55ad => 201
	i32 2169148018, ; 336: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 317
	i32 2181898931, ; 337: Microsoft.Extensions.Options.dll => 0x820d22b3 => 188
	i32 2192057212, ; 338: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 186
	i32 2193016926, ; 339: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 340: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 294
	i32 2201231467, ; 341: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 342: it\Microsoft.Maui.Controls.resources => 0x839595db => 319
	i32 2217644978, ; 343: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 277
	i32 2222056684, ; 344: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2228745826, ; 345: pt-BR\Microsoft.Data.SqlClient.resources => 0x84d7f662 => 301
	i32 2244775296, ; 346: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 259
	i32 2252106437, ; 347: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2253551641, ; 348: Microsoft.IdentityModel.Protocols => 0x86527819 => 195
	i32 2256313426, ; 349: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 350: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 351: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 182
	i32 2267999099, ; 352: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 214
	i32 2270573516, ; 353: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 313
	i32 2279755925, ; 354: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 266
	i32 2293034957, ; 355: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 356: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 357: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 358: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 323
	i32 2305521784, ; 359: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2309278602, ; 360: ko\Microsoft.Data.SqlClient.resources => 0x89a4cb8a => 300
	i32 2315684594, ; 361: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 218
	i32 2320631194, ; 362: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 363: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 364: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 365: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 366: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369706906, ; 367: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 194
	i32 2371007202, ; 368: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 181
	i32 2378619854, ; 369: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 370: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 371: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 318
	i32 2401565422, ; 372: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 373: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 241
	i32 2421380589, ; 374: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 375: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 228
	i32 2427813419, ; 376: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 315
	i32 2435356389, ; 377: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 378: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 379: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 380: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 381: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 382: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 231
	i32 2471841756, ; 383: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 384: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 385: Microsoft.Maui.Controls => 0x93dba8a1 => 199
	i32 2483903535, ; 386: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 387: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 388: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 389: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 390: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 253
	i32 2509217888, ; 391: System.Diagnostics.EventLog => 0x958fa060 => 207
	i32 2522472828, ; 392: Xamarin.Android.Glide.dll => 0x9659e17c => 212
	i32 2538310050, ; 393: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 394: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 316
	i32 2562349572, ; 395: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 396: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 397: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 254
	i32 2581819634, ; 398: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 276
	i32 2585220780, ; 399: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 400: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 401: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 402: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 325
	i32 2605712449, ; 403: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 294
	i32 2615233544, ; 404: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 245
	i32 2616218305, ; 405: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 187
	i32 2617129537, ; 406: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 407: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 408: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 235
	i32 2624644809, ; 409: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 240
	i32 2626831493, ; 410: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 320
	i32 2627185994, ; 411: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2628210652, ; 412: System.Memory.Data => 0x9ca74fdc => 209
	i32 2629843544, ; 413: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 414: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 249
	i32 2640290731, ; 415: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 194
	i32 2640706905, ; 416: Azure.Core => 0x9d65fd59 => 173
	i32 2660759594, ; 417: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 211
	i32 2663391936, ; 418: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 214
	i32 2663698177, ; 419: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 420: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 421: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 422: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2677098746, ; 423: Azure.Identity.dll => 0x9f9148fa => 174
	i32 2686887180, ; 424: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 425: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 426: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 274
	i32 2715334215, ; 427: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 428: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 429: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 430: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 431: Xamarin.AndroidX.Activity => 0xa2e0939b => 216
	i32 2735172069, ; 432: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 433: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 222
	i32 2740051746, ; 434: Microsoft.Identity.Client => 0xa351df22 => 190
	i32 2740948882, ; 435: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 436: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 437: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 326
	i32 2755098380, ; 438: Microsoft.SqlServer.Server.dll => 0xa437770c => 204
	i32 2758225723, ; 439: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 200
	i32 2764765095, ; 440: Microsoft.Maui.dll => 0xa4caf7a7 => 201
	i32 2765824710, ; 441: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 442: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 288
	i32 2778768386, ; 443: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 279
	i32 2779977773, ; 444: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 267
	i32 2785988530, ; 445: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 332
	i32 2788224221, ; 446: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 245
	i32 2801831435, ; 447: Microsoft.Maui.Graphics => 0xa7008e0b => 203
	i32 2803228030, ; 448: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2804509662, ; 449: es/Microsoft.Data.SqlClient.resources.dll => 0xa7296bde => 296
	i32 2806116107, ; 450: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 311
	i32 2810250172, ; 451: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 232
	i32 2819470561, ; 452: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 453: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 454: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 267
	i32 2824502124, ; 455: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 456: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 324
	i32 2838993487, ; 457: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 256
	i32 2841937114, ; 458: it/Microsoft.Data.SqlClient.resources.dll => 0xa96484da => 298
	i32 2849599387, ; 459: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 460: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 279
	i32 2855708567, ; 461: Xamarin.AndroidX.Transition => 0xaa36a797 => 275
	i32 2861098320, ; 462: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 463: Microsoft.Maui.Essentials => 0xaa8a4878 => 202
	i32 2867946736, ; 464: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 211
	i32 2868488919, ; 465: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 176
	i32 2870099610, ; 466: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 217
	i32 2875164099, ; 467: Jsr305Binding.dll => 0xab5f85c3 => 284
	i32 2875220617, ; 468: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 469: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 243
	i32 2887636118, ; 470: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 471: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 472: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 473: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 474: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 475: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 476: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 280
	i32 2919462931, ; 477: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 478: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 219
	i32 2936416060, ; 479: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 480: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 481: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2944313911, ; 482: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 206
	i32 2959614098, ; 483: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 484: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 485: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 486: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 239
	i32 2987532451, ; 487: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 270
	i32 2996846495, ; 488: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 252
	i32 3012788804, ; 489: System.Configuration.ConfigurationManager => 0xb3938244 => 206
	i32 3016983068, ; 490: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 272
	i32 3023353419, ; 491: WindowsBase.dll => 0xb434b64b => 165
	i32 3023511517, ; 492: ru\Microsoft.Data.SqlClient.resources => 0xb4371fdd => 302
	i32 3024354802, ; 493: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 247
	i32 3033605958, ; 494: System.Memory.Data.dll => 0xb4d12746 => 209
	i32 3038032645, ; 495: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 339
	i32 3056245963, ; 496: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 269
	i32 3057625584, ; 497: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 260
	i32 3059408633, ; 498: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 499: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 500: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 501: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 317
	i32 3084678329, ; 502: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 197
	i32 3090735792, ; 503: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 504: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 505: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 506: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 507: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 508: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 509: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 510: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 511: GoogleGson.dll => 0xbba64c02 => 178
	i32 3158628304, ; 512: zh-Hant/Microsoft.Data.SqlClient.resources.dll => 0xbc44d7d0 => 304
	i32 3159123045, ; 513: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 514: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 515: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 261
	i32 3192346100, ; 516: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 517: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 518: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 519: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 520: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 238
	i32 3220365878, ; 521: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 522: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 523: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 524: Xamarin.AndroidX.CardView => 0xc235e84d => 226
	i32 3265493905, ; 525: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 526: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3268887220, ; 527: fr/Microsoft.Data.SqlClient.resources.dll => 0xc2d742b4 => 297
	i32 3276600297, ; 528: pt-BR/Microsoft.Data.SqlClient.resources.dll => 0xc34cf3e9 => 301
	i32 3277815716, ; 529: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3277915096, ; 530: ZambaDistributeurATM => 0xc36103d8 => 0
	i32 3279906254, ; 531: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 532: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 533: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 534: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 535: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 536: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 312
	i32 3312457198, ; 537: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 193
	i32 3316684772, ; 538: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 539: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 236
	i32 3317144872, ; 540: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 541: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 224
	i32 3343947874, ; 542: fr\Microsoft.Data.SqlClient.resources => 0xc7509862 => 297
	i32 3345895724, ; 543: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 265
	i32 3346324047, ; 544: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 262
	i32 3357674450, ; 545: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 329
	i32 3358260929, ; 546: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 547: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 217
	i32 3362522851, ; 548: Xamarin.AndroidX.Core => 0xc86c06e3 => 233
	i32 3366347497, ; 549: Java.Interop => 0xc8a662e9 => 168
	i32 3374879918, ; 550: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 195
	i32 3374999561, ; 551: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 266
	i32 3381016424, ; 552: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 308
	i32 3395150330, ; 553: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 554: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 555: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 237
	i32 3428513518, ; 556: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 183
	i32 3429136800, ; 557: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 558: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 559: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 240
	i32 3445260447, ; 560: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 561: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 198
	i32 3463511458, ; 562: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 316
	i32 3471940407, ; 563: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 564: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 565: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 329
	i32 3484440000, ; 566: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 328
	i32 3485117614, ; 567: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 568: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 569: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 229
	i32 3509114376, ; 570: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 571: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 572: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 573: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3545306353, ; 574: Microsoft.Data.SqlClient => 0xd35114f1 => 180
	i32 3555084973, ; 575: de\Microsoft.Data.SqlClient.resources => 0xd3e64aad => 295
	i32 3558648585, ; 576: System.ClientModel => 0xd41cab09 => 205
	i32 3560100363, ; 577: System.Threading.Timer => 0xd432d20b => 147
	i32 3561949811, ; 578: Azure.Core.dll => 0xd44f0a73 => 173
	i32 3570554715, ; 579: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3570608287, ; 580: System.Runtime.Caching.dll => 0xd4d3289f => 210
	i32 3580758918, ; 581: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 336
	i32 3597029428, ; 582: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 215
	i32 3598340787, ; 583: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 584: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 585: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 586: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 264
	i32 3633644679, ; 587: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 219
	i32 3638274909, ; 588: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 589: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 250
	i32 3643446276, ; 590: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 333
	i32 3643854240, ; 591: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 261
	i32 3645089577, ; 592: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 593: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 182
	i32 3660523487, ; 594: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 595: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 596: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 225
	i32 3684561358, ; 597: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 229
	i32 3697841164, ; 598: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 338
	i32 3700591436, ; 599: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 192
	i32 3700866549, ; 600: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 601: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 234
	i32 3716563718, ; 602: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 603: Xamarin.AndroidX.Annotation => 0xdda814c6 => 218
	i32 3724971120, ; 604: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 260
	i32 3732100267, ; 605: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 606: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 607: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 608: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3786282454, ; 609: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 227
	i32 3792276235, ; 610: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 611: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 198
	i32 3802395368, ; 612: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3803019198, ; 613: zh-Hans/Microsoft.Data.SqlClient.resources.dll => 0xe2ad77be => 303
	i32 3817368567, ; 614: CommunityToolkit.Maui.dll => 0xe3886bf7 => 175
	i32 3819260425, ; 615: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 616: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 617: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 618: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 184
	i32 3844307129, ; 619: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3848348906, ; 620: es\Microsoft.Data.SqlClient.resources => 0xe56124ea => 296
	i32 3849253459, ; 621: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 622: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 623: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 624: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 625: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 626: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 275
	i32 3888767677, ; 627: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 265
	i32 3889960447, ; 628: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 337
	i32 3896106733, ; 629: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 630: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 233
	i32 3901907137, ; 631: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 632: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 633: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 278
	i32 3928044579, ; 634: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 635: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 636: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 263
	i32 3945713374, ; 637: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 638: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 639: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 221
	i32 3959773229, ; 640: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 252
	i32 3980434154, ; 641: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 332
	i32 3987592930, ; 642: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 314
	i32 4003436829, ; 643: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 644: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 220
	i32 4025784931, ; 645: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 646: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 200
	i32 4054681211, ; 647: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 648: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 649: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 650: Microsoft.Maui.Essentials.dll => 0xf40add04 => 202
	i32 4099507663, ; 651: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 652: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 653: Xamarin.AndroidX.Emoji2 => 0xf479582c => 241
	i32 4102112229, ; 654: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 327
	i32 4125707920, ; 655: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 322
	i32 4126470640, ; 656: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 183
	i32 4127667938, ; 657: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 658: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 659: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 660: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 334
	i32 4151237749, ; 661: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 662: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 663: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 664: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 665: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 666: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 257
	i32 4185676441, ; 667: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 668: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 669: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 670: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 234
	i32 4257443520, ; 671: ko/Microsoft.Data.SqlClient.resources.dll => 0xfdc36ec0 => 300
	i32 4258378803, ; 672: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 256
	i32 4260525087, ; 673: System.Buffers => 0xfdf2741f => 7
	i32 4263231520, ; 674: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 208
	i32 4271975918, ; 675: Microsoft.Maui.Controls.dll => 0xfea12dee => 199
	i32 4274623895, ; 676: CommunityToolkit.Mvvm.dll => 0xfec99597 => 177
	i32 4274976490, ; 677: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 678: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 257
	i32 4294763496 ; 679: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 243
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [680 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 253, ; 3
	i32 287, ; 4
	i32 48, ; 5
	i32 80, ; 6
	i32 145, ; 7
	i32 0, ; 8
	i32 298, ; 9
	i32 299, ; 10
	i32 30, ; 11
	i32 338, ; 12
	i32 124, ; 13
	i32 203, ; 14
	i32 102, ; 15
	i32 271, ; 16
	i32 107, ; 17
	i32 271, ; 18
	i32 139, ; 19
	i32 291, ; 20
	i32 299, ; 21
	i32 77, ; 22
	i32 124, ; 23
	i32 13, ; 24
	i32 227, ; 25
	i32 302, ; 26
	i32 132, ; 27
	i32 273, ; 28
	i32 151, ; 29
	i32 335, ; 30
	i32 336, ; 31
	i32 18, ; 32
	i32 225, ; 33
	i32 26, ; 34
	i32 247, ; 35
	i32 1, ; 36
	i32 59, ; 37
	i32 42, ; 38
	i32 91, ; 39
	i32 230, ; 40
	i32 303, ; 41
	i32 147, ; 42
	i32 249, ; 43
	i32 246, ; 44
	i32 307, ; 45
	i32 54, ; 46
	i32 69, ; 47
	i32 335, ; 48
	i32 216, ; 49
	i32 83, ; 50
	i32 204, ; 51
	i32 320, ; 52
	i32 248, ; 53
	i32 319, ; 54
	i32 131, ; 55
	i32 55, ; 56
	i32 149, ; 57
	i32 74, ; 58
	i32 145, ; 59
	i32 62, ; 60
	i32 146, ; 61
	i32 339, ; 62
	i32 165, ; 63
	i32 331, ; 64
	i32 231, ; 65
	i32 12, ; 66
	i32 244, ; 67
	i32 125, ; 68
	i32 152, ; 69
	i32 113, ; 70
	i32 166, ; 71
	i32 164, ; 72
	i32 246, ; 73
	i32 192, ; 74
	i32 259, ; 75
	i32 84, ; 76
	i32 318, ; 77
	i32 312, ; 78
	i32 189, ; 79
	i32 150, ; 80
	i32 291, ; 81
	i32 60, ; 82
	i32 185, ; 83
	i32 51, ; 84
	i32 103, ; 85
	i32 114, ; 86
	i32 179, ; 87
	i32 40, ; 88
	i32 284, ; 89
	i32 282, ; 90
	i32 120, ; 91
	i32 326, ; 92
	i32 175, ; 93
	i32 52, ; 94
	i32 44, ; 95
	i32 119, ; 96
	i32 236, ; 97
	i32 324, ; 98
	i32 242, ; 99
	i32 81, ; 100
	i32 136, ; 101
	i32 278, ; 102
	i32 223, ; 103
	i32 8, ; 104
	i32 73, ; 105
	i32 306, ; 106
	i32 155, ; 107
	i32 293, ; 108
	i32 154, ; 109
	i32 92, ; 110
	i32 288, ; 111
	i32 45, ; 112
	i32 321, ; 113
	i32 309, ; 114
	i32 292, ; 115
	i32 109, ; 116
	i32 205, ; 117
	i32 129, ; 118
	i32 25, ; 119
	i32 213, ; 120
	i32 72, ; 121
	i32 55, ; 122
	i32 46, ; 123
	i32 330, ; 124
	i32 188, ; 125
	i32 237, ; 126
	i32 22, ; 127
	i32 251, ; 128
	i32 86, ; 129
	i32 43, ; 130
	i32 160, ; 131
	i32 71, ; 132
	i32 264, ; 133
	i32 3, ; 134
	i32 42, ; 135
	i32 63, ; 136
	i32 16, ; 137
	i32 53, ; 138
	i32 333, ; 139
	i32 287, ; 140
	i32 105, ; 141
	i32 292, ; 142
	i32 285, ; 143
	i32 248, ; 144
	i32 34, ; 145
	i32 158, ; 146
	i32 85, ; 147
	i32 32, ; 148
	i32 12, ; 149
	i32 51, ; 150
	i32 56, ; 151
	i32 268, ; 152
	i32 36, ; 153
	i32 184, ; 154
	i32 308, ; 155
	i32 286, ; 156
	i32 221, ; 157
	i32 35, ; 158
	i32 58, ; 159
	i32 295, ; 160
	i32 255, ; 161
	i32 191, ; 162
	i32 178, ; 163
	i32 17, ; 164
	i32 289, ; 165
	i32 207, ; 166
	i32 164, ; 167
	i32 321, ; 168
	i32 254, ; 169
	i32 187, ; 170
	i32 180, ; 171
	i32 281, ; 172
	i32 327, ; 173
	i32 153, ; 174
	i32 277, ; 175
	i32 262, ; 176
	i32 325, ; 177
	i32 223, ; 178
	i32 29, ; 179
	i32 177, ; 180
	i32 52, ; 181
	i32 323, ; 182
	i32 282, ; 183
	i32 5, ; 184
	i32 307, ; 185
	i32 272, ; 186
	i32 276, ; 187
	i32 228, ; 188
	i32 293, ; 189
	i32 220, ; 190
	i32 239, ; 191
	i32 85, ; 192
	i32 281, ; 193
	i32 61, ; 194
	i32 112, ; 195
	i32 57, ; 196
	i32 337, ; 197
	i32 268, ; 198
	i32 99, ; 199
	i32 19, ; 200
	i32 232, ; 201
	i32 111, ; 202
	i32 101, ; 203
	i32 102, ; 204
	i32 305, ; 205
	i32 104, ; 206
	i32 285, ; 207
	i32 71, ; 208
	i32 38, ; 209
	i32 32, ; 210
	i32 103, ; 211
	i32 73, ; 212
	i32 208, ; 213
	i32 311, ; 214
	i32 9, ; 215
	i32 123, ; 216
	i32 46, ; 217
	i32 222, ; 218
	i32 189, ; 219
	i32 9, ; 220
	i32 43, ; 221
	i32 4, ; 222
	i32 269, ; 223
	i32 315, ; 224
	i32 193, ; 225
	i32 310, ; 226
	i32 31, ; 227
	i32 138, ; 228
	i32 92, ; 229
	i32 93, ; 230
	i32 330, ; 231
	i32 210, ; 232
	i32 49, ; 233
	i32 141, ; 234
	i32 112, ; 235
	i32 140, ; 236
	i32 174, ; 237
	i32 238, ; 238
	i32 115, ; 239
	i32 304, ; 240
	i32 286, ; 241
	i32 157, ; 242
	i32 76, ; 243
	i32 79, ; 244
	i32 258, ; 245
	i32 37, ; 246
	i32 280, ; 247
	i32 196, ; 248
	i32 176, ; 249
	i32 242, ; 250
	i32 235, ; 251
	i32 64, ; 252
	i32 138, ; 253
	i32 15, ; 254
	i32 116, ; 255
	i32 274, ; 256
	i32 283, ; 257
	i32 230, ; 258
	i32 48, ; 259
	i32 70, ; 260
	i32 80, ; 261
	i32 126, ; 262
	i32 94, ; 263
	i32 121, ; 264
	i32 290, ; 265
	i32 26, ; 266
	i32 251, ; 267
	i32 97, ; 268
	i32 28, ; 269
	i32 226, ; 270
	i32 328, ; 271
	i32 306, ; 272
	i32 149, ; 273
	i32 169, ; 274
	i32 4, ; 275
	i32 98, ; 276
	i32 33, ; 277
	i32 93, ; 278
	i32 273, ; 279
	i32 185, ; 280
	i32 21, ; 281
	i32 41, ; 282
	i32 170, ; 283
	i32 322, ; 284
	i32 244, ; 285
	i32 314, ; 286
	i32 190, ; 287
	i32 179, ; 288
	i32 258, ; 289
	i32 289, ; 290
	i32 283, ; 291
	i32 263, ; 292
	i32 2, ; 293
	i32 134, ; 294
	i32 111, ; 295
	i32 186, ; 296
	i32 334, ; 297
	i32 213, ; 298
	i32 331, ; 299
	i32 58, ; 300
	i32 95, ; 301
	i32 196, ; 302
	i32 313, ; 303
	i32 39, ; 304
	i32 224, ; 305
	i32 25, ; 306
	i32 94, ; 307
	i32 89, ; 308
	i32 99, ; 309
	i32 10, ; 310
	i32 87, ; 311
	i32 100, ; 312
	i32 270, ; 313
	i32 181, ; 314
	i32 290, ; 315
	i32 215, ; 316
	i32 197, ; 317
	i32 310, ; 318
	i32 7, ; 319
	i32 255, ; 320
	i32 305, ; 321
	i32 212, ; 322
	i32 191, ; 323
	i32 88, ; 324
	i32 250, ; 325
	i32 154, ; 326
	i32 309, ; 327
	i32 33, ; 328
	i32 116, ; 329
	i32 82, ; 330
	i32 20, ; 331
	i32 11, ; 332
	i32 162, ; 333
	i32 3, ; 334
	i32 201, ; 335
	i32 317, ; 336
	i32 188, ; 337
	i32 186, ; 338
	i32 84, ; 339
	i32 294, ; 340
	i32 64, ; 341
	i32 319, ; 342
	i32 277, ; 343
	i32 143, ; 344
	i32 301, ; 345
	i32 259, ; 346
	i32 157, ; 347
	i32 195, ; 348
	i32 41, ; 349
	i32 117, ; 350
	i32 182, ; 351
	i32 214, ; 352
	i32 313, ; 353
	i32 266, ; 354
	i32 131, ; 355
	i32 75, ; 356
	i32 66, ; 357
	i32 323, ; 358
	i32 172, ; 359
	i32 300, ; 360
	i32 218, ; 361
	i32 143, ; 362
	i32 106, ; 363
	i32 151, ; 364
	i32 70, ; 365
	i32 156, ; 366
	i32 194, ; 367
	i32 181, ; 368
	i32 121, ; 369
	i32 127, ; 370
	i32 318, ; 371
	i32 152, ; 372
	i32 241, ; 373
	i32 141, ; 374
	i32 228, ; 375
	i32 315, ; 376
	i32 20, ; 377
	i32 14, ; 378
	i32 135, ; 379
	i32 75, ; 380
	i32 59, ; 381
	i32 231, ; 382
	i32 167, ; 383
	i32 168, ; 384
	i32 199, ; 385
	i32 15, ; 386
	i32 74, ; 387
	i32 6, ; 388
	i32 23, ; 389
	i32 253, ; 390
	i32 207, ; 391
	i32 212, ; 392
	i32 91, ; 393
	i32 316, ; 394
	i32 1, ; 395
	i32 136, ; 396
	i32 254, ; 397
	i32 276, ; 398
	i32 134, ; 399
	i32 69, ; 400
	i32 146, ; 401
	i32 325, ; 402
	i32 294, ; 403
	i32 245, ; 404
	i32 187, ; 405
	i32 88, ; 406
	i32 96, ; 407
	i32 235, ; 408
	i32 240, ; 409
	i32 320, ; 410
	i32 31, ; 411
	i32 209, ; 412
	i32 45, ; 413
	i32 249, ; 414
	i32 194, ; 415
	i32 173, ; 416
	i32 211, ; 417
	i32 214, ; 418
	i32 109, ; 419
	i32 158, ; 420
	i32 35, ; 421
	i32 22, ; 422
	i32 174, ; 423
	i32 114, ; 424
	i32 57, ; 425
	i32 274, ; 426
	i32 144, ; 427
	i32 118, ; 428
	i32 120, ; 429
	i32 110, ; 430
	i32 216, ; 431
	i32 139, ; 432
	i32 222, ; 433
	i32 190, ; 434
	i32 54, ; 435
	i32 105, ; 436
	i32 326, ; 437
	i32 204, ; 438
	i32 200, ; 439
	i32 201, ; 440
	i32 133, ; 441
	i32 288, ; 442
	i32 279, ; 443
	i32 267, ; 444
	i32 332, ; 445
	i32 245, ; 446
	i32 203, ; 447
	i32 159, ; 448
	i32 296, ; 449
	i32 311, ; 450
	i32 232, ; 451
	i32 163, ; 452
	i32 132, ; 453
	i32 267, ; 454
	i32 161, ; 455
	i32 324, ; 456
	i32 256, ; 457
	i32 298, ; 458
	i32 140, ; 459
	i32 279, ; 460
	i32 275, ; 461
	i32 169, ; 462
	i32 202, ; 463
	i32 211, ; 464
	i32 176, ; 465
	i32 217, ; 466
	i32 284, ; 467
	i32 40, ; 468
	i32 243, ; 469
	i32 81, ; 470
	i32 56, ; 471
	i32 37, ; 472
	i32 97, ; 473
	i32 166, ; 474
	i32 172, ; 475
	i32 280, ; 476
	i32 82, ; 477
	i32 219, ; 478
	i32 98, ; 479
	i32 30, ; 480
	i32 159, ; 481
	i32 206, ; 482
	i32 18, ; 483
	i32 127, ; 484
	i32 119, ; 485
	i32 239, ; 486
	i32 270, ; 487
	i32 252, ; 488
	i32 206, ; 489
	i32 272, ; 490
	i32 165, ; 491
	i32 302, ; 492
	i32 247, ; 493
	i32 209, ; 494
	i32 339, ; 495
	i32 269, ; 496
	i32 260, ; 497
	i32 170, ; 498
	i32 16, ; 499
	i32 144, ; 500
	i32 317, ; 501
	i32 197, ; 502
	i32 125, ; 503
	i32 118, ; 504
	i32 38, ; 505
	i32 115, ; 506
	i32 47, ; 507
	i32 142, ; 508
	i32 117, ; 509
	i32 34, ; 510
	i32 178, ; 511
	i32 304, ; 512
	i32 95, ; 513
	i32 53, ; 514
	i32 261, ; 515
	i32 129, ; 516
	i32 153, ; 517
	i32 24, ; 518
	i32 161, ; 519
	i32 238, ; 520
	i32 148, ; 521
	i32 104, ; 522
	i32 89, ; 523
	i32 226, ; 524
	i32 60, ; 525
	i32 142, ; 526
	i32 297, ; 527
	i32 301, ; 528
	i32 100, ; 529
	i32 0, ; 530
	i32 5, ; 531
	i32 13, ; 532
	i32 122, ; 533
	i32 135, ; 534
	i32 28, ; 535
	i32 312, ; 536
	i32 193, ; 537
	i32 72, ; 538
	i32 236, ; 539
	i32 24, ; 540
	i32 224, ; 541
	i32 297, ; 542
	i32 265, ; 543
	i32 262, ; 544
	i32 329, ; 545
	i32 137, ; 546
	i32 217, ; 547
	i32 233, ; 548
	i32 168, ; 549
	i32 195, ; 550
	i32 266, ; 551
	i32 308, ; 552
	i32 101, ; 553
	i32 123, ; 554
	i32 237, ; 555
	i32 183, ; 556
	i32 163, ; 557
	i32 167, ; 558
	i32 240, ; 559
	i32 39, ; 560
	i32 198, ; 561
	i32 316, ; 562
	i32 17, ; 563
	i32 171, ; 564
	i32 329, ; 565
	i32 328, ; 566
	i32 137, ; 567
	i32 150, ; 568
	i32 229, ; 569
	i32 155, ; 570
	i32 130, ; 571
	i32 19, ; 572
	i32 65, ; 573
	i32 180, ; 574
	i32 295, ; 575
	i32 205, ; 576
	i32 147, ; 577
	i32 173, ; 578
	i32 47, ; 579
	i32 210, ; 580
	i32 336, ; 581
	i32 215, ; 582
	i32 79, ; 583
	i32 61, ; 584
	i32 106, ; 585
	i32 264, ; 586
	i32 219, ; 587
	i32 49, ; 588
	i32 250, ; 589
	i32 333, ; 590
	i32 261, ; 591
	i32 14, ; 592
	i32 182, ; 593
	i32 68, ; 594
	i32 171, ; 595
	i32 225, ; 596
	i32 229, ; 597
	i32 338, ; 598
	i32 192, ; 599
	i32 78, ; 600
	i32 234, ; 601
	i32 108, ; 602
	i32 218, ; 603
	i32 260, ; 604
	i32 67, ; 605
	i32 63, ; 606
	i32 27, ; 607
	i32 160, ; 608
	i32 227, ; 609
	i32 10, ; 610
	i32 198, ; 611
	i32 11, ; 612
	i32 303, ; 613
	i32 175, ; 614
	i32 78, ; 615
	i32 126, ; 616
	i32 83, ; 617
	i32 184, ; 618
	i32 66, ; 619
	i32 296, ; 620
	i32 107, ; 621
	i32 65, ; 622
	i32 128, ; 623
	i32 122, ; 624
	i32 77, ; 625
	i32 275, ; 626
	i32 265, ; 627
	i32 337, ; 628
	i32 8, ; 629
	i32 233, ; 630
	i32 2, ; 631
	i32 44, ; 632
	i32 278, ; 633
	i32 156, ; 634
	i32 128, ; 635
	i32 263, ; 636
	i32 23, ; 637
	i32 133, ; 638
	i32 221, ; 639
	i32 252, ; 640
	i32 332, ; 641
	i32 314, ; 642
	i32 29, ; 643
	i32 220, ; 644
	i32 62, ; 645
	i32 200, ; 646
	i32 90, ; 647
	i32 87, ; 648
	i32 148, ; 649
	i32 202, ; 650
	i32 36, ; 651
	i32 86, ; 652
	i32 241, ; 653
	i32 327, ; 654
	i32 322, ; 655
	i32 183, ; 656
	i32 50, ; 657
	i32 6, ; 658
	i32 90, ; 659
	i32 334, ; 660
	i32 21, ; 661
	i32 162, ; 662
	i32 96, ; 663
	i32 50, ; 664
	i32 113, ; 665
	i32 257, ; 666
	i32 130, ; 667
	i32 76, ; 668
	i32 27, ; 669
	i32 234, ; 670
	i32 300, ; 671
	i32 256, ; 672
	i32 7, ; 673
	i32 208, ; 674
	i32 199, ; 675
	i32 177, ; 676
	i32 110, ; 677
	i32 257, ; 678
	i32 243 ; 679
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
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}

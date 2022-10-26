.class public Lcom/tencent/ads/utility/Utils;
.super Lcom/tencent/adcore/utility/AdCoreUtils;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/ads/utility/Utils$VideoType;,
        Lcom/tencent/ads/utility/Utils$FlushedInputStream;
    }
.end annotation


# static fields
.field private static final ERROR:Ljava/lang/String; = "TENCENT_AD_UNIGNOREABLE_LOG:"

.field private static final FILE_READ_BUFFER:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "Utils"

.field public static cType:Ljava/lang/String; = null

.field private static isInited:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/tencent/adcore/utility/AdCoreUtils;-><init>()V

    return-void
.end method

.method private static RGB565toARGB888(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    .line 807
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    .line 808
    new-array v0, v0, [I

    .line 809
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 810
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 811
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    move-object v1, v9

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 812
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v9
.end method

.method public static addParamsAfterUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1176
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "?"

    .line 1179
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1182
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static bitmapFromAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 123
    invoke-static {p0, p1}, Lcom/tencent/adcore/utility/AdCoreUtils;->bitmapFromAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static bitmapFromUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bitmapFromUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 221
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 224
    :try_start_1
    new-instance v1, Lcom/tencent/ads/utility/Utils$FlushedInputStream;

    invoke-direct {v1, p0}, Lcom/tencent/ads/utility/Utils$FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-object p0, v0

    .line 228
    :catchall_1
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/tencent/ads/utility/AdIO;->close(Ljava/io/Closeable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method public static blurImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 769
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x43808000    # 257.0f

    div-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    .line 772
    invoke-static {p0, v1}, Lcom/tencent/ads/utility/Utils;->scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resized blur image: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/16 v2, 0xc

    if-ge v0, v1, :cond_1

    .line 776
    invoke-static {p0, v2}, Lcom/tencent/ads/utility/Utils;->doFastBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 778
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_2

    .line 779
    invoke-static {p0}, Lcom/tencent/ads/utility/Utils;->RGB565toARGB888(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 781
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_3

    .line 782
    sget-object v0, Lcom/tencent/ads/utility/Utils;->CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 784
    invoke-static {v0, p0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 785
    invoke-static {v0, p0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v3

    .line 786
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    .line 787
    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    int-to-float v1, v2

    .line 788
    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 789
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 790
    invoke-virtual {v3, p0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 193
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 194
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateInSampleSize, imageWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", imageHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reqWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reqHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Utils"

    invoke-static {v3, v2}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gt v1, p2, :cond_0

    if-le p0, p1, :cond_1

    .line 197
    :cond_0
    div-int/lit8 v1, v1, 0x2

    .line 198
    div-int/lit8 p0, p0, 0x2

    .line 200
    :goto_0
    div-int v2, v1, v0

    if-le v2, p2, :cond_1

    div-int v2, p0, v0

    if-le v2, p1, :cond_1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static createButtonFromAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;
    .locals 2

    .line 143
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 144
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 145
    sget p0, Lcom/tencent/ads/utility/Utils;->sDensity:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    invoke-static {p1, p0}, Lcom/tencent/ads/utility/Utils;->drawableFromAssets(Ljava/lang/String;F)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 0

    .line 678
    invoke-static {p0}, Lcom/tencent/adcore/utility/AdCoreUtils;->deleteFile(Ljava/io/File;)V

    return-void
.end method

.method public static dip2px(F)I
    .locals 0

    .line 694
    invoke-static {p0}, Lcom/tencent/adcore/utility/AdCoreUtils;->dip2px(F)I

    move-result p0

    return p0
.end method

.method public static dip2px(I)I
    .locals 0

    .line 690
    invoke-static {p0}, Lcom/tencent/adcore/utility/AdCoreUtils;->dip2px(I)I

    move-result p0

    return p0
.end method

.method public static doDownload(Landroid/content/Context;Lcom/tencent/ads/data/DownloadItem;Lcom/tencent/ads/service/AdDownloader$AdDownloadListener;ILjava/lang/String;)V
    .locals 10

    .line 1044
    iget-object v1, p1, Lcom/tencent/ads/data/DownloadItem;->pname:Ljava/lang/String;

    iget v2, p1, Lcom/tencent/ads/data/DownloadItem;->versionCode:I

    iget-object v3, p1, Lcom/tencent/ads/data/DownloadItem;->channelId:Ljava/lang/String;

    iget-boolean v4, p1, Lcom/tencent/ads/data/DownloadItem;->autoDownload:Z

    iget-boolean v5, p1, Lcom/tencent/ads/data/DownloadItem;->autoInstall:Z

    iget-object v6, p1, Lcom/tencent/ads/data/DownloadItem;->oid:Ljava/lang/String;

    move-object v0, p0

    move-object v7, p2

    move v8, p3

    move-object v9, p4

    invoke-static/range {v0 .. v9}, Lcom/tencent/ads/utility/Utils;->doDownload(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;Lcom/tencent/ads/service/AdDownloader$AdDownloadListener;ILjava/lang/String;)V

    return-void
.end method

.method public static doDownload(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;Lcom/tencent/ads/service/AdDownloader$AdDownloadListener;ILjava/lang/String;)V
    .locals 7

    .line 1053
    invoke-static {}, Lcom/tencent/ads/service/AdConfig;->getInstance()Lcom/tencent/ads/service/AdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdConfig;->isUseDownloaderSDK()Z

    move-result v0

    invoke-static {v0}, Lcom/tencent/ads/service/AdDownloader;->setUseDownloaderSDK(Z)V

    .line 1054
    new-instance v0, Lcom/tencent/ads/service/AdDownloader;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/tencent/ads/service/AdDownloader;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    move-object v2, p0

    move-object v3, p7

    move v4, p8

    move-object/from16 v5, p9

    move-object v6, p6

    .line 1055
    invoke-virtual/range {v1 .. v6}, Lcom/tencent/ads/service/AdDownloader;->doDownload(Landroid/content/Context;Lcom/tencent/ads/service/AdDownloader$AdDownloadListener;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static doFastBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 37

    move/from16 v0, p1

    .line 821
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move-object/from16 v1, p0

    goto :goto_0

    .line 824
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    move-object/from16 v3, p0

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 825
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    :goto_0
    if-ge v0, v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 832
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 833
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    mul-int v13, v11, v12

    .line 835
    new-array v14, v13, [I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    move-object v4, v14

    move v6, v11

    move v9, v11

    move v10, v12

    .line 836
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v3, v11, -0x1

    add-int/lit8 v4, v12, -0x1

    add-int v5, v0, v0

    add-int/2addr v5, v2

    .line 843
    new-array v6, v13, [I

    .line 844
    new-array v7, v13, [I

    .line 845
    new-array v8, v13, [I

    .line 847
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-array v9, v9, [I

    add-int/lit8 v10, v5, 0x1

    shr-int/2addr v10, v2

    mul-int v10, v10, v10

    mul-int/lit16 v13, v10, 0x100

    .line 851
    new-array v15, v13, [I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v13, :cond_2

    .line 853
    div-int v17, v2, v10

    aput v17, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    .line 858
    filled-new-array {v5, v2}, [I

    move-result-object v2

    const-class v10, I

    invoke-static {v10, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    add-int/lit8 v10, v0, 0x1

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_2
    const/16 v19, 0x2

    if-ge v13, v12, :cond_7

    move-object/from16 v20, v1

    neg-int v1, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    :goto_3
    const v30, 0xff00

    const/high16 v31, 0xff0000

    if-gt v1, v0, :cond_4

    move/from16 v33, v4

    move/from16 v32, v12

    const/4 v12, 0x0

    .line 870
    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v17, v4

    aget v4, v14, v4

    add-int v34, v1, v0

    .line 871
    aget-object v34, v2, v34

    and-int v31, v4, v31

    shr-int/lit8 v31, v31, 0x10

    .line 872
    aput v31, v34, v12

    and-int v30, v4, v30

    shr-int/lit8 v30, v30, 0x8

    const/16 v16, 0x1

    .line 873
    aput v30, v34, v16

    and-int/lit16 v4, v4, 0xff

    .line 874
    aput v4, v34, v19

    .line 875
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v4, v10, v4

    .line 876
    aget v30, v34, v12

    mul-int v30, v30, v4

    add-int v21, v21, v30

    .line 877
    aget v30, v34, v16

    mul-int v30, v30, v4

    add-int v22, v22, v30

    .line 878
    aget v30, v34, v19

    mul-int v30, v30, v4

    add-int v23, v23, v30

    if-lez v1, :cond_3

    .line 880
    aget v4, v34, v12

    add-int v27, v27, v4

    .line 881
    aget v4, v34, v16

    add-int v28, v28, v4

    .line 882
    aget v4, v34, v19

    add-int v29, v29, v4

    goto :goto_4

    .line 884
    :cond_3
    aget v4, v34, v12

    add-int v24, v24, v4

    .line 885
    aget v4, v34, v16

    add-int v25, v25, v4

    .line 886
    aget v4, v34, v19

    add-int v26, v26, v4

    :goto_4
    add-int/lit8 v1, v1, 0x1

    move/from16 v12, v32

    move/from16 v4, v33

    goto :goto_3

    :cond_4
    move/from16 v33, v4

    move/from16 v32, v12

    move v4, v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v11, :cond_6

    .line 893
    aget v12, v15, v21

    aput v12, v6, v17

    .line 894
    aget v12, v15, v22

    aput v12, v7, v17

    .line 895
    aget v12, v15, v23

    aput v12, v8, v17

    sub-int v21, v21, v24

    sub-int v22, v22, v25

    sub-int v23, v23, v26

    sub-int v12, v4, v0

    add-int/2addr v12, v5

    .line 902
    rem-int/2addr v12, v5

    aget-object v12, v2, v12

    const/16 v34, 0x0

    .line 904
    aget v35, v12, v34

    sub-int v24, v24, v35

    const/16 v16, 0x1

    .line 905
    aget v34, v12, v16

    sub-int v25, v25, v34

    .line 906
    aget v34, v12, v19

    sub-int v26, v26, v34

    if-nez v13, :cond_5

    add-int v34, v1, v0

    move-object/from16 v35, v15

    add-int/lit8 v15, v34, 0x1

    .line 909
    invoke-static {v15, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    aput v15, v9, v1

    goto :goto_6

    :cond_5
    move-object/from16 v35, v15

    .line 911
    :goto_6
    aget v15, v9, v1

    add-int v15, v18, v15

    aget v15, v14, v15

    and-int v34, v15, v31

    shr-int/lit8 v34, v34, 0x10

    const/16 v36, 0x0

    .line 913
    aput v34, v12, v36

    and-int v34, v15, v30

    shr-int/lit8 v34, v34, 0x8

    const/16 v16, 0x1

    .line 914
    aput v34, v12, v16

    and-int/lit16 v15, v15, 0xff

    .line 915
    aput v15, v12, v19

    .line 917
    aget v15, v12, v36

    add-int v27, v27, v15

    .line 918
    aget v15, v12, v16

    add-int v28, v28, v15

    .line 919
    aget v12, v12, v19

    add-int v29, v29, v12

    add-int v21, v21, v27

    add-int v22, v22, v28

    add-int v23, v23, v29

    add-int/lit8 v4, v4, 0x1

    .line 925
    rem-int/2addr v4, v5

    .line 926
    rem-int v12, v4, v5

    aget-object v12, v2, v12

    const/4 v15, 0x0

    .line 928
    aget v34, v12, v15

    add-int v24, v24, v34

    const/16 v16, 0x1

    .line 929
    aget v34, v12, v16

    add-int v25, v25, v34

    .line 930
    aget v34, v12, v19

    add-int v26, v26, v34

    .line 932
    aget v34, v12, v15

    sub-int v27, v27, v34

    .line 933
    aget v15, v12, v16

    sub-int v28, v28, v15

    .line 934
    aget v12, v12, v19

    sub-int v29, v29, v12

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v15, v35

    goto/16 :goto_5

    :cond_6
    move-object/from16 v35, v15

    add-int v18, v18, v11

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v20

    move/from16 v12, v32

    move/from16 v4, v33

    goto/16 :goto_2

    :cond_7
    move-object/from16 v20, v1

    move/from16 v33, v4

    move/from16 v32, v12

    move-object/from16 v35, v15

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v11, :cond_d

    neg-int v3, v0

    mul-int v4, v3, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    :goto_8
    if-gt v3, v0, :cond_a

    move-object/from16 v25, v9

    const/4 v9, 0x0

    .line 944
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v26

    add-int v26, v26, v1

    add-int v27, v3, v0

    .line 946
    aget-object v27, v2, v27

    .line 948
    aget v28, v6, v26

    aput v28, v27, v9

    .line 949
    aget v9, v7, v26

    const/16 v16, 0x1

    aput v9, v27, v16

    .line 950
    aget v9, v8, v26

    aput v9, v27, v19

    .line 952
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int v9, v10, v9

    .line 954
    aget v28, v6, v26

    mul-int v28, v28, v9

    add-int v12, v12, v28

    .line 955
    aget v28, v7, v26

    mul-int v28, v28, v9

    add-int v13, v13, v28

    .line 956
    aget v26, v8, v26

    mul-int v26, v26, v9

    add-int v15, v15, v26

    if-lez v3, :cond_8

    const/4 v9, 0x0

    .line 959
    aget v26, v27, v9

    add-int v22, v22, v26

    const/16 v16, 0x1

    .line 960
    aget v26, v27, v16

    add-int v23, v23, v26

    .line 961
    aget v26, v27, v19

    add-int v24, v24, v26

    goto :goto_9

    :cond_8
    const/4 v9, 0x0

    const/16 v16, 0x1

    .line 963
    aget v26, v27, v9

    add-int v17, v17, v26

    .line 964
    aget v9, v27, v16

    add-int v18, v18, v9

    .line 965
    aget v9, v27, v19

    add-int v21, v21, v9

    :goto_9
    move/from16 v9, v33

    if-ge v3, v9, :cond_9

    add-int/2addr v4, v11

    :cond_9
    add-int/lit8 v3, v3, 0x1

    move/from16 v33, v9

    move-object/from16 v9, v25

    goto :goto_8

    :cond_a
    move-object/from16 v25, v9

    move/from16 v9, v33

    move v4, v1

    move/from16 v26, v23

    move/from16 v27, v24

    const/4 v3, 0x0

    move/from16 v23, v0

    move/from16 v24, v22

    move/from16 v22, v21

    move/from16 v21, v18

    move/from16 v18, v17

    move/from16 v17, v15

    move v15, v13

    move v13, v12

    move/from16 v12, v32

    :goto_a
    if-ge v3, v12, :cond_c

    const/high16 v28, -0x1000000

    .line 976
    aget v29, v14, v4

    and-int v28, v29, v28

    aget v29, v35, v13

    shl-int/lit8 v29, v29, 0x10

    or-int v28, v28, v29

    aget v29, v35, v15

    shl-int/lit8 v29, v29, 0x8

    or-int v28, v28, v29

    aget v29, v35, v17

    or-int v28, v28, v29

    aput v28, v14, v4

    sub-int v13, v13, v18

    sub-int v15, v15, v21

    sub-int v17, v17, v22

    sub-int v28, v23, v0

    add-int v28, v28, v5

    .line 983
    rem-int v28, v28, v5

    aget-object v28, v2, v28

    const/16 v29, 0x0

    .line 985
    aget v30, v28, v29

    sub-int v18, v18, v30

    const/16 v16, 0x1

    .line 986
    aget v29, v28, v16

    sub-int v21, v21, v29

    .line 987
    aget v29, v28, v19

    sub-int v22, v22, v29

    if-nez v1, :cond_b

    add-int v0, v3, v10

    .line 990
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v0, v0, v11

    aput v0, v25, v3

    .line 992
    :cond_b
    aget v0, v25, v3

    add-int/2addr v0, v1

    .line 994
    aget v29, v6, v0

    const/16 v30, 0x0

    aput v29, v28, v30

    .line 995
    aget v29, v7, v0

    const/16 v16, 0x1

    aput v29, v28, v16

    .line 996
    aget v0, v8, v0

    aput v0, v28, v19

    .line 998
    aget v0, v28, v30

    add-int v24, v24, v0

    .line 999
    aget v0, v28, v16

    add-int v26, v26, v0

    .line 1000
    aget v0, v28, v19

    add-int v27, v27, v0

    add-int v13, v13, v24

    add-int v15, v15, v26

    add-int v17, v17, v27

    add-int/lit8 v23, v23, 0x1

    .line 1006
    rem-int v23, v23, v5

    .line 1007
    aget-object v0, v2, v23

    const/16 v28, 0x0

    .line 1009
    aget v29, v0, v28

    add-int v18, v18, v29

    const/16 v16, 0x1

    .line 1010
    aget v29, v0, v16

    add-int v21, v21, v29

    .line 1011
    aget v29, v0, v19

    add-int v22, v22, v29

    .line 1013
    aget v29, v0, v28

    sub-int v24, v24, v29

    .line 1014
    aget v29, v0, v16

    sub-int v26, v26, v29

    .line 1015
    aget v0, v0, v19

    sub-int v27, v27, v0

    add-int/2addr v4, v11

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, p1

    goto/16 :goto_a

    :cond_c
    const/16 v16, 0x1

    const/16 v28, 0x0

    add-int/lit8 v1, v1, 0x1

    move/from16 v0, p1

    move/from16 v33, v9

    move/from16 v32, v12

    move-object/from16 v9, v25

    goto/16 :goto_7

    :cond_d
    move/from16 v12, v32

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, v20

    move-object v4, v14

    move v6, v11

    move v9, v11

    move v10, v12

    .line 1021
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v20
.end method

.method public static downloadApp(Lcom/tencent/ads/data/DownloadItem;)V
    .locals 15

    const-string v0, "downloadApp"

    const-string v1, "Utils"

    .line 739
    invoke-static {v1, v0}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v2, "com.tencent.qqlive.tad.download.TadDownloadManager"

    .line 741
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInstance"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    .line 742
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x0

    new-array v6, v4, [Ljava/lang/Object;

    .line 743
    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "startTask"

    const/4 v6, 0x7

    new-array v7, v6, [Ljava/lang/Class;

    .line 745
    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v4

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-class v8, Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v8, v7, v10

    const-class v8, Ljava/lang/String;

    const/4 v11, 0x3

    aput-object v8, v7, v11

    const-class v8, Ljava/lang/String;

    const/4 v12, 0x4

    aput-object v8, v7, v12

    const-class v8, Landroid/graphics/Bitmap;

    const/4 v13, 0x5

    aput-object v8, v7, v13

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x6

    aput-object v8, v7, v14

    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v5, v6, [Ljava/lang/Object;

    .line 746
    iget-object v6, p0, Lcom/tencent/ads/data/DownloadItem;->oid:Ljava/lang/String;

    aput-object v6, v5, v4

    iget-object v4, p0, Lcom/tencent/ads/data/DownloadItem;->pname:Ljava/lang/String;

    aput-object v4, v5, v9

    iget-object v4, p0, Lcom/tencent/ads/data/DownloadItem;->appDownloadUrl:Ljava/lang/String;

    aput-object v4, v5, v10

    iget-object v4, p0, Lcom/tencent/ads/data/DownloadItem;->appName:Ljava/lang/String;

    aput-object v4, v5, v11

    iget-object v4, p0, Lcom/tencent/ads/data/DownloadItem;->appLogoUrl:Ljava/lang/String;

    aput-object v4, v5, v12

    iget-object v4, p0, Lcom/tencent/ads/data/DownloadItem;->logoBitmap:Landroid/graphics/Bitmap;

    aput-object v4, v5, v13

    iget-boolean p0, p0, Lcom/tencent/ads/data/DownloadItem;->autoInstall:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v5, v14

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u9759\u9ed8\u4e0b\u8f7d\u5931\u8d25\uff01"

    .line 749
    invoke-static {v0, p0}, Lcom/tencent/ads/utility/Utils;->unignoreableException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static dp2px(F)I
    .locals 1

    .line 131
    sget v0, Lcom/tencent/ads/utility/Utils;->sDensity:F

    mul-float v0, v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static drawableFromAssets(Ljava/lang/String;F)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 127
    invoke-static {p0, p1}, Lcom/tencent/adcore/utility/AdCoreUtils;->drawableFromAssets(Ljava/lang/String;F)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static fetchText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 273
    invoke-static {p0}, Lcom/tencent/ads/utility/Utils;->fetchUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 276
    :try_start_0
    invoke-static {p0}, Lcom/tencent/ads/utility/Utils;->readInputStreamAsString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 278
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static fetchUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    .line 264
    invoke-static {p0}, Lcom/tencent/adcore/utility/AdCoreUtils;->fetchUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static file2String(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 419
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 424
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    .line 428
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 431
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 434
    invoke-static {v0}, Lcom/tencent/ads/utility/AdIO;->close(Ljava/io/Closeable;)Ljava/lang/Throwable;

    return-object p0

    :catchall_0
    move-object v0, v1

    :catchall_1
    invoke-static {v0}, Lcom/tencent/ads/utility/AdIO;->close(Ljava/io/Closeable;)Ljava/lang/Throwable;

    return-object v1
.end method

.method public static fromFileToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fromFileToBitmap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 156
    :try_start_0
    sget v0, Lcom/tencent/ads/utility/Utils;->sWidth:I

    .line 157
    sget v3, Lcom/tencent/ads/utility/Utils;->sHeight:I

    .line 158
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    .line 159
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-lez v0, :cond_0

    if-lez v3, :cond_0

    .line 161
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 162
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 163
    :try_start_1
    invoke-static {v5, v2, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 165
    invoke-static {v4, v0, v3}, Lcom/tencent/ads/utility/Utils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v6

    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    :cond_0
    move-object v5, v2

    .line 167
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fromFileToBitmap, screenWidth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", screenHeight: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", imSampleSize: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p0, 0x0

    .line 169
    :try_start_2
    iput-boolean p0, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 170
    iput-boolean p0, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 171
    invoke-static {v0, v2, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object v5, v0

    goto :goto_1

    :catch_0
    move-object v5, v0

    goto :goto_2

    :catch_1
    move-object v5, v0

    goto :goto_3

    :catch_2
    move-object v5, v0

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_3
    nop

    goto :goto_2

    :catch_4
    nop

    goto :goto_3

    :catch_5
    nop

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object v5, v2

    :goto_1
    if-eqz v5, :cond_1

    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 182
    :catch_6
    :cond_1
    throw p0

    :catch_7
    move-object v5, v2

    :goto_2
    if-eqz v5, :cond_2

    .line 181
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    :catch_8
    :cond_2
    return-object v2

    :catch_9
    move-object v5, v2

    :goto_3
    if-eqz v5, :cond_3

    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    :catch_a
    :cond_3
    return-object v2

    :catch_b
    move-object v5, v2

    :goto_4
    if-eqz v5, :cond_4

    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c

    :catch_c
    :cond_4
    :goto_5
    return-object v2
.end method

.method public static getActivity(Landroid/view/View;)Landroid/app/Activity;
    .locals 5

    .line 1154
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.internal.policy.DecorContext"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Utils"

    if-eqz v0, :cond_0

    .line 1156
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mPhoneWindow"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    .line 1157
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1158
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getContext"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    .line 1160
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    check-cast p0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1162
    invoke-static {v1, p0}, Lcom/tencent/adcore/utility/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1166
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 1168
    invoke-static {v1, p0}, Lcom/tencent/adcore/utility/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static getAdType(Ljava/lang/String;)I
    .locals 1

    .line 540
    sget-object v0, Lcom/tencent/ads/data/AdParam;->AD_TYPE_CORNER_SIGN_LIVE_VALUE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x6

    goto :goto_0

    .line 542
    :cond_0
    sget-object v0, Lcom/tencent/ads/data/AdParam;->AD_TYPE_IVB_LIVE_VALUE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x5

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getAdType(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    .line 510
    :pswitch_0
    sget-object p0, Lcom/tencent/ads/data/AdParam;->AD_TYPE_DIFINITION:Ljava/lang/String;

    return-object p0

    .line 508
    :pswitch_1
    sget-object p0, Lcom/tencent/ads/data/AdParam;->AD_TYPE_PROGRESS_BAR:Ljava/lang/String;

    return-object p0

    .line 506
    :pswitch_2
    sget-object p0, Lcom/tencent/ads/data/AdParam;->AD_TYPE_VIDEO_LOADING:Ljava/lang/String;

    return-object p0

    .line 504
    :pswitch_3
    sget-object p0, Lcom/tencent/ads/data/AdParam;->AD_TYPE_SUPER_CORNER:Ljava/lang/String;

    return-object p0

    .line 500
    :pswitch_4
    sget-object p0, Lcom/tencent/ads/data/AdParam;->AD_TYPE_CLICK_BUY_VALUE:Ljava/lang/String;

    return-object p0

    .line 502
    :pswitch_5
    sget-object p0, Lcom/tencent/ads/data/AdParam;->AD_TYPE_BARRAGE:Ljava/lang/String;

    return-object p0

    .line 498
    :pswitch_6
    sget-object p0, Lcom/tencent/ads/data/AdParam;->AD_TYPE_CORNER_SIGN_VALUE:Ljava/lang/String;

    return-object p0

    .line 496
    :pswitch_7
    sget-object p0, Lcom/tencent/ads/data/AdParam;->AD_TYPE_IVB_VALUE:Ljava/lang/String;

    return-object p0

    .line 494
    :pswitch_8
    sget-object p0, Lcom/tencent/ads/data/AdParam;->AD_TYPE_MIDROLL_VALUE:Ljava/lang/String;

    return-object p0

    .line 492
    :pswitch_9
    sget-object p0, Lcom/tencent/ads/data/AdParam;->AD_TYPE_POSTROLL_VALUE:Ljava/lang/String;

    return-object p0

    .line 490
    :pswitch_a
    sget-object p0, Lcom/tencent/ads/data/AdParam;->Ad_TYPE_PAUSE_VALUE:Ljava/lang/String;

    return-object p0

    .line 488
    :pswitch_b
    sget-object p0, Lcom/tencent/ads/data/AdParam;->AD_TYPE_LOADING_VALUE:Ljava/lang/String;

    return-object p0

    .line 514
    :cond_0
    sget-object p0, Lcom/tencent/ads/data/AdParam;->AD_TYPE_CMIDROLL:Ljava/lang/String;

    return-object p0

    .line 512
    :cond_1
    sget-object p0, Lcom/tencent/ads/data/AdParam;->AD_TYPE_ANCHOR:Ljava/lang/String;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAdType(IZ)Ljava/lang/String;
    .locals 2

    const-string v0, "_"

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 523
    sget-object p0, Lcom/tencent/ads/data/AdParam;->AD_TYPE_LOADING_VALUE:Ljava/lang/String;

    return-object p0

    .line 525
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Lcom/tencent/ads/data/AdParam;->AD_TYPE_LOADING_VALUE:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/tencent/ads/data/AdParam;->AD_TYPE_SPONSOR_VALUE:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 p1, 0xa

    if-eq p0, p1, :cond_3

    const/16 p1, 0xb

    if-eq p0, p1, :cond_3

    const/16 p1, 0xc

    if-ne p0, p1, :cond_2

    goto :goto_0

    .line 533
    :cond_2
    invoke-static {p0}, Lcom/tencent/ads/utility/Utils;->getAdType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 530
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Lcom/tencent/ads/data/AdParam;->AD_TYPE_VIDEO_LOADING:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/tencent/ads/data/AdParam;->AD_TYPE_PROGRESS_BAR:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/tencent/ads/data/AdParam;->AD_TYPE_DIFINITION:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    const-string v0, "Utils"

    .line 703
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 705
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packageName: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionCode: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/adcore/utility/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 709
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/adcore/utility/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getDeviceInfo()Ljava/lang/String;
    .locals 1

    .line 549
    invoke-static {}, Lcom/tencent/ads/utility/SystemUtil;->getDeviceMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/ads/utility/Utils;->getEncryptData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEncryptData(Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 566
    invoke-static {p0}, Lcom/tencent/adcore/utility/AdCoreUtils;->getEncryptData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .locals 1

    .line 639
    invoke-static {}, Lcom/tencent/adcore/utility/AdCoreUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInnerStoragePath()Ljava/lang/String;
    .locals 4

    .line 622
    sget-object v0, Lcom/tencent/ads/utility/Utils;->CONTEXT:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 625
    :cond_0
    sget-object v0, Lcom/tencent/ads/utility/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 629
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, "tad_cache"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 630
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 631
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    .line 635
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLevenshteinDisForPinyin(Ljava/lang/String;Ljava/lang/String;)F
    .locals 5

    .line 1074
    invoke-static {p0}, Lcom/tencent/ads/utility/Utils;->getPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1075
    invoke-static {p1}, Lcom/tencent/ads/utility/Utils;->getPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1076
    invoke-static {v0, v1}, Lcom/tencent/ads/utility/Utils;->levenshtein(Ljava/lang/String;Ljava/lang/String;)F

    move-result v2

    .line 1077
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "record LevenshteinDis:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "["

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;)V

    return v2
.end method

.method public static getMd5FromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 583
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "?md5="

    .line 587
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    const-string v0, "&md5="

    .line 590
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    :cond_1
    if-lez v2, :cond_2

    .line 593
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static getPinYin(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1059
    invoke-static {}, Lcom/tencent/ads/utility/HanziToPinyin;->getInstance()Lcom/tencent/ads/utility/HanziToPinyin;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/ads/utility/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_1

    .line 1061
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1062
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/ads/utility/HanziToPinyin$Token;

    const/4 v2, 0x2

    .line 1063
    iget v3, v1, Lcom/tencent/ads/utility/HanziToPinyin$Token;->type:I

    if-ne v2, v3, :cond_0

    .line 1064
    iget-object v1, v1, Lcom/tencent/ads/utility/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1066
    :cond_0
    iget-object v1, v1, Lcom/tencent/ads/utility/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1070
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRealFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 682
    invoke-static {p0, p1}, Lcom/tencent/adcore/utility/AdCoreUtils;->getRealFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getSp(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1

    .line 659
    sget-object v0, Lcom/tencent/ads/utility/Utils;->CONTEXT:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 660
    sget-object v0, Lcom/tencent/ads/utility/Utils;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 1032
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1033
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1034
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1035
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1036
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    return-object p0
.end method

.method public static getUUID()Ljava/lang/String;
    .locals 1

    .line 570
    invoke-static {}, Lcom/tencent/adcore/utility/AdCoreUtils;->getUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserData()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 482
    invoke-static {v0}, Lcom/tencent/ads/utility/Utils;->getUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 558
    invoke-static {}, Lcom/tencent/ads/utility/SystemUtil;->getUserMap()Ljava/util/HashMap;

    move-result-object v0

    .line 559
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "requestid"

    .line 560
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    :cond_0
    invoke-static {v0}, Lcom/tencent/ads/utility/Utils;->getEncryptData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getValueFromLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 393
    invoke-static {p0, p1}, Lcom/tencent/adcore/utility/AdCoreUtils;->getValueFromLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVideoType(Lcom/tencent/ads/service/AdResponse;)Lcom/tencent/ads/utility/Utils$VideoType;
    .locals 2

    .line 1236
    sget-object v0, Lcom/tencent/ads/utility/Utils$VideoType;->NORMAL:Lcom/tencent/ads/utility/Utils$VideoType;

    if-eqz p0, :cond_2

    .line 1238
    invoke-virtual {p0}, Lcom/tencent/ads/service/AdResponse;->getAdFlag()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 1244
    :cond_0
    sget-object v0, Lcom/tencent/ads/utility/Utils$VideoType;->HBO:Lcom/tencent/ads/utility/Utils$VideoType;

    goto :goto_0

    .line 1241
    :cond_1
    sget-object v0, Lcom/tencent/ads/utility/Utils$VideoType;->WARNER:Lcom/tencent/ads/utility/Utils$VideoType;

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static initParams(Landroid/content/Context;)V
    .locals 4

    const-string v0, "Utils"

    if-nez p0, :cond_0

    const-string p0, "initParams error, param c == null."

    .line 83
    invoke-static {v0, p0}, Lcom/tencent/adcore/utility/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 86
    :cond_0
    sget-boolean v1, Lcom/tencent/ads/utility/Utils;->isInited:Z

    if-eqz v1, :cond_1

    const-string p0, "initParams isInited, return."

    .line 87
    invoke-static {v0, p0}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 90
    :cond_1
    invoke-static {p0}, Lcom/tencent/adcore/utility/AdCoreUtils;->initParams(Landroid/content/Context;)V

    const-string v1, "window"

    .line 91
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 92
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 95
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 97
    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :cond_2
    if-nez v3, :cond_3

    const-string p0, "initParams error, display == null."

    .line 101
    invoke-static {v0, p0}, Lcom/tencent/adcore/utility/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 104
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/tencent/ads/utility/Utils;->CONTEXT:Landroid/content/Context;

    .line 107
    sget-object v1, Lcom/tencent/ads/utility/Utils;->CONTEXT:Landroid/content/Context;

    if-nez v1, :cond_4

    .line 108
    sput-object p0, Lcom/tencent/ads/utility/Utils;->CONTEXT:Landroid/content/Context;

    .line 110
    :cond_4
    sget-object p0, Lcom/tencent/ads/utility/Utils;->CONTEXT:Landroid/content/Context;

    sput-object p0, Lcom/tencent/adcore/utility/AdCoreUtils;->CONTEXT:Landroid/content/Context;

    .line 111
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initParams, sWidth: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tencent/ads/utility/Utils;->sWidth:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sHeight: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tencent/ads/utility/Utils;->sHeight:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sDensity: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tencent/ads/utility/Utils;->sDensity:F

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sDpi: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tencent/ads/utility/Utils;->sDpi:F

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sXDpi: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tencent/ads/utility/Utils;->sxDpi:F

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", syDpi: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tencent/ads/utility/Utils;->syDpi:F

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 112
    sput-boolean p0, Lcom/tencent/ads/utility/Utils;->isInited:Z

    return-void
.end method

.method public static inputStream2File(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 454
    invoke-static {p0, p1}, Lcom/tencent/adcore/utility/AdCoreUtils;->inputStream2File(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static inputStream2String(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 406
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    .line 409
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 410
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 413
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 414
    invoke-static {v0}, Lcom/tencent/ads/utility/AdIO;->close(Ljava/io/Closeable;)Ljava/lang/Throwable;

    .line 415
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static inputStream2StringUtf(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    .line 440
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 441
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 445
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 447
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static installApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    :try_start_0
    const-string v0, "com.tencent.qqlive.tad.download.TadDownloadManager"

    .line 755
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 756
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    .line 757
    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "installApp"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    .line 759
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v2

    aput-object p1, v3, v7

    .line 760
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "\u5b89\u88c5\u5931\u8d25\uff01"

    .line 762
    invoke-static {p1, p0}, Lcom/tencent/ads/utility/Utils;->unignoreableException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 698
    invoke-static {p0, p1}, Lcom/tencent/adcore/utility/AdCoreUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3

    const-string v0, "Utils"

    const/4 v1, 0x0

    .line 720
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 721
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", versionCode: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/adcore/utility/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt p0, p2, :cond_0

    const/4 p0, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 727
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/adcore/utility/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1
.end method

.method public static isDouble(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[-\\+]?[.\\d]*$"

    .line 339
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 340
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 344
    invoke-static {p0}, Lcom/tencent/adcore/utility/AdCoreUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static isEmpty(Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 348
    invoke-static {p0}, Lcom/tencent/adcore/utility/AdCoreUtils;->isEmpty(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 0

    .line 352
    invoke-static {p0}, Lcom/tencent/adcore/utility/AdCoreUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isEnableAdJump()Z
    .locals 2

    .line 1198
    invoke-static {}, Lcom/tencent/ads/service/AppAdConfig;->getInstance()Lcom/tencent/ads/service/AppAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/ads/service/AppAdConfig;->isForGoogle()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/ads/utility/AdSetting;->getChid()I

    move-result v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/tencent/ads/service/AdConfig;->getInstance()Lcom/tencent/ads/service/AdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdConfig;->isEnableJumpAdPage()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static isH5Supported()Z
    .locals 1

    .line 575
    invoke-static {}, Lcom/tencent/adcore/utility/AdCoreUtils;->isH5Supported()Z

    move-result v0

    return v0
.end method

.method public static isHBOVideo(Lcom/tencent/ads/service/AdResponse;)Z
    .locals 1

    .line 1228
    invoke-static {p0}, Lcom/tencent/ads/utility/Utils;->getVideoType(Lcom/tencent/ads/service/AdResponse;)Lcom/tencent/ads/utility/Utils$VideoType;

    move-result-object p0

    sget-object v0, Lcom/tencent/ads/utility/Utils$VideoType;->HBO:Lcom/tencent/ads/utility/Utils$VideoType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isHttpUrl(Ljava/lang/String;)Z
    .locals 0

    .line 579
    invoke-static {p0}, Lcom/tencent/adcore/utility/AdCoreUtils;->isHttpUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isIntercepted(Ljava/lang/String;)Z
    .locals 0

    .line 478
    invoke-static {p0}, Lcom/tencent/adcore/utility/AdCoreUtils;->isIntercepted(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isLinkageInfoInAditems([Lcom/tencent/ads/data/AdItem;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1134
    array-length v1, p0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 1137
    :cond_0
    array-length v1, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    if-eqz v4, :cond_1

    .line 1138
    invoke-virtual {v4}, Lcom/tencent/ads/data/AdItem;->getLinkageInfo()Lcom/tencent/ads/data/LinkageInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 0

    .line 335
    invoke-static {p0}, Lcom/tencent/adcore/utility/AdCoreUtils;->isNumeric(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSDCardExist()Z
    .locals 1

    .line 644
    invoke-static {}, Lcom/tencent/adcore/utility/AdCoreUtils;->isSDCardExist()Z

    move-result v0

    return v0
.end method

.method public static isSDCardExistAndCanWrite()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "mounted"

    .line 651
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 653
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/adcore/utility/SLog;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0
.end method

.method public static isSameDay(JJ)Z
    .locals 6

    sub-long v0, p0, p2

    .line 327
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/32 v3, 0x5265c00

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    return v2

    .line 331
    :cond_0
    div-long/2addr p0, v3

    div-long/2addr p2, v3

    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static isSpecialVideo(Lcom/tencent/ads/service/AdResponse;)Z
    .locals 1

    .line 1212
    invoke-static {p0}, Lcom/tencent/ads/utility/Utils;->getVideoType(Lcom/tencent/ads/service/AdResponse;)Lcom/tencent/ads/utility/Utils$VideoType;

    move-result-object p0

    sget-object v0, Lcom/tencent/ads/utility/Utils$VideoType;->NORMAL:Lcom/tencent/ads/utility/Utils$VideoType;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isTencentVideoVip(Lcom/tencent/ads/view/AdRequest;)Z
    .locals 3

    const/4 v0, 0x0
# come sopra a isVip
    return v0
.end method

.method public static isUrlPathEndwith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 605
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 609
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 611
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public static isVip(Lcom/tencent/ads/service/AdResponse;Lcom/tencent/ads/view/AdRequest;)Z
    .locals 3
# return false perche' sembra essere "e' VIP questo ad?"
    const/4 v0, 0x0

    return v0

.end method

.method public static isWarnerVideo(Lcom/tencent/ads/service/AdResponse;)Z
    .locals 1

    .line 1220
    invoke-static {p0}, Lcom/tencent/ads/utility/Utils;->getVideoType(Lcom/tencent/ads/service/AdResponse;)Lcom/tencent/ads/utility/Utils$VideoType;

    move-result-object p0

    sget-object v0, Lcom/tencent/ads/utility/Utils$VideoType;->WARNER:Lcom/tencent/ads/utility/Utils$VideoType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static levenshtein(Ljava/lang/String;Ljava/lang/String;)F
    .locals 13

    .line 1083
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1084
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v1, 0x1

    .line 1086
    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v3, I

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-gt v4, v0, :cond_0

    .line 1089
    aget-object v5, v2, v4

    aput v4, v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-gt v4, v1, :cond_1

    .line 1092
    aget-object v5, v2, v3

    aput v4, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_2
    if-gt v5, v0, :cond_4

    const/4 v6, 0x1

    :goto_3
    if-gt v6, v1, :cond_3

    add-int/lit8 v7, v5, -0x1

    .line 1098
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v8, v10, :cond_2

    const/4 v8, 0x0

    goto :goto_4

    :cond_2
    const/4 v8, 0x1

    .line 1104
    :goto_4
    aget-object v10, v2, v5

    const/4 v11, 0x3

    new-array v11, v11, [I

    aget-object v12, v2, v7

    aget v12, v12, v9

    add-int/2addr v12, v8

    aput v12, v11, v3

    aget-object v8, v2, v5

    aget v8, v8, v9

    add-int/2addr v8, v4

    aput v8, v11, v4

    const/4 v8, 0x2

    aget-object v7, v2, v7

    aget v7, v7, v6

    add-int/2addr v7, v4

    aput v7, v11, v8

    invoke-static {v11}, Lcom/tencent/ads/utility/Utils;->min([I)I

    move-result v7

    aput v7, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1112
    aget-object v0, v2, v0

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    sub-float/2addr v3, v0

    return v3
.end method

.method public static makeNativeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "txvideo"

    .line 1187
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tenvideo2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "qqlive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    const-string v0, "sender=self"

    .line 1188
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&sender=self"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private static varargs min([I)I
    .locals 4

    .line 1120
    array-length v0, p0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-le v1, v3, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static nonNullString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 470
    invoke-static {p0}, Lcom/tencent/adcore/utility/AdCoreUtils;->nonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseImageExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "."

    .line 314
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 316
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static px2dip(I)I
    .locals 1

    int-to-float p0, p0

    .line 686
    sget v0, Lcom/tencent/ads/utility/Utils;->sDensity:F

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static readInputStreamAsString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    invoke-static {p0}, Lcom/tencent/adcore/utility/AdCoreUtils;->readInputStreamAsString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    .line 799
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 800
    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 801
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 802
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method

.method public static shortToast(Ljava/lang/String;)V
    .locals 2

    .line 667
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 670
    :cond_0
    sget-object v0, Lcom/tencent/ads/utility/Utils;->CONTEXT:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static startApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 735
    invoke-static {p0, p1}, Lcom/tencent/adcore/utility/AdCoreUtils;->startApp(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static string2InputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 465
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static string2InputStreamUtf(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 474
    invoke-static {p0}, Lcom/tencent/adcore/utility/AdCoreUtils;->string2InputStreamUtf(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static toHexString([BLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 389
    invoke-static {p0, p1}, Lcom/tencent/adcore/utility/AdCoreUtils;->toHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toMd5(Ljava/io/File;)Ljava/lang/String;
    .locals 7

    .line 361
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x400

    new-array v2, v0, [B

    :try_start_0
    const-string v3, "MD5"

    .line 369
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 370
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 p0, 0x0

    .line 371
    :try_start_1
    invoke-virtual {v4, v2, p0, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 372
    invoke-virtual {v3, v2, p0, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 374
    :cond_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 380
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 382
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 385
    :goto_1
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/tencent/ads/utility/Utils;->toHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v4, v1

    .line 376
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 380
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 382
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-object v1

    :catchall_1
    move-exception p0

    move-object v1, v4

    .line 380
    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 382
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 383
    :goto_5
    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method

.method public static toMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 357
    invoke-static {p0}, Lcom/tencent/adcore/utility/AdCoreUtils;->toMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unZipFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 674
    invoke-static {p0, p1}, Lcom/tencent/adcore/utility/AdCoreUtils;->unZipFile(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public static unignoreableException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 297
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TENCENT_AD_UNIGNOREABLE_LOG:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 299
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 301
    :cond_0
    invoke-static {}, Lcom/tencent/adcore/utility/SLog;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/ads/service/AdPing;->doExcptionPing(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

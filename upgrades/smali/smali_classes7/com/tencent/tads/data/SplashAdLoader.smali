.class public Lcom/tencent/tads/data/SplashAdLoader;
.super Lcom/tencent/tads/data/TadLoader;
.source "SourceFile"


# static fields
.field public static final SPLASH_TIME_SKIP:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "SplashAdLoader"


# instance fields
.field private desc:Ljava/lang/String;

.field public emptyItem:Lcom/tencent/tads/data/TadEmptyItem;

.field public h5Path:Ljava/lang/String;

.field private h5TimeLife:I

.field private height:I

.field private icon:Ljava/lang/String;

.field private imageBitmap:Landroid/graphics/Bitmap;

.field public imgPath:Ljava/lang/String;

.field public isFirstPlay:Z

.field public isLviewSuccess:Z

.field public isWaiting:Z

.field private linkToVid:Ljava/lang/String;

.field private mPostRunnable:Ljava/lang/Runnable;

.field private openSchemeType:I

.field private order:Lcom/tencent/tads/data/TadOrder;

.field public shareMode:Z

.field private splashMargin:I

.field private timelife:I

.field private title:Ljava/lang/String;

.field public type:I

.field private url:Ljava/lang/String;

.field public videoPath:Ljava/lang/String;

.field private videoTimelife:I

.field private volume:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

#    .line 22
#    invoke-direct {p0}, Lcom/tencent/tads/data/TadLoader;-><init>()V
#
#    const/16 v0, 0x1388
#
#    .line 29
#    iput v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->timelife:I
#
#    const/4 v0, -0x1
#
#    .line 42
#    iput v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->type:I
#
#    const/16 v0, 0x120
#
#    .line 43
#    iput v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->splashMargin:I
#
#    const/4 v0, 0x1
#
#    .line 46
#    iput-boolean v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->isWaiting:Z

    return-void
.end method

.method private pingEmpty()V
    .locals 4

#    .line 245
#    iget-object v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->emptyItem:Lcom/tencent/tads/data/TadEmptyItem;
#
#    if-eqz v0, :cond_0
#
#    iget-boolean v0, v0, Lcom/tencent/tads/data/TadEmptyItem;->isExposured:Z
#
#    if-nez v0, :cond_0
#
#    const-string v0, "SplashAdLoader"
#
#    const-string/jumbo v1, "pingEmpty, ping empty."
#
#    .line 246
#    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
#
#    .line 247
#    invoke-static {}, Lcom/tencent/tads/report/SplashReporter;->getInstance()Lcom/tencent/tads/report/SplashReporter;
#
#    move-result-object v0
#
#    iget-object v1, p0, Lcom/tencent/tads/data/SplashAdLoader;->emptyItem:Lcom/tencent/tads/data/TadEmptyItem;
#
#    const/4 v2, 0x1
#
#    invoke-virtual {v0, v1, v2}, Lcom/tencent/tads/report/SplashReporter;->pingExp(Lcom/tencent/tads/data/TadPojo;Z)V
#
#    .line 248
#    invoke-static {}, Lcom/tencent/tads/report/SplashReporter;->getInstance()Lcom/tencent/tads/report/SplashReporter;
#
#    move-result-object v0
#
#    iget-object v1, p0, Lcom/tencent/tads/data/SplashAdLoader;->emptyItem:Lcom/tencent/tads/data/TadEmptyItem;
#
#    const/4 v3, 0x0
#
#    invoke-virtual {v0, v1, v3}, Lcom/tencent/tads/report/SplashReporter;->pingExp(Lcom/tencent/tads/data/TadPojo;Z)V
#
#    .line 249
#    invoke-static {}, Lcom/tencent/tads/report/SplashReporter;->getInstance()Lcom/tencent/tads/report/SplashReporter;
#
#    move-result-object v0
#
#    iget-object v1, p0, Lcom/tencent/tads/data/SplashAdLoader;->emptyItem:Lcom/tencent/tads/data/TadEmptyItem;
#
#    invoke-virtual {v0, v1}, Lcom/tencent/tads/report/SplashReporter;->fillPing(Lcom/tencent/tads/data/TadPojo;)V
#
#    .line 251
#    invoke-static {}, Lcom/tencent/tads/report/SplashReporter;->getInstance()Lcom/tencent/tads/report/SplashReporter;
#
#    move-result-object v0
#
#    iget-object v1, p0, Lcom/tencent/tads/data/SplashAdLoader;->emptyItem:Lcom/tencent/tads/data/TadEmptyItem;
#
#    invoke-virtual {v0, v1}, Lcom/tencent/tads/report/SplashReporter;->fillCustomPing(Lcom/tencent/tads/data/TadPojo;)V
#
#    .line 253
#    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
#
#    move-result-wide v0
#
#    invoke-static {v2, v0, v1}, Lcom/tencent/tads/utility/SplashHighSpeedFileUtils;->putLastOrderPlayTime(ZJ)V
#
#    :cond_0
    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getH5Path()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->h5Path:Ljava/lang/String;

    return-object v0
.end method

.method public getH5Timelife()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->h5TimeLife:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->height:I

    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkToVid()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->linkToVid:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenSchemeType()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->openSchemeType:I

    return v0
.end method

.method public getOrder()Lcom/tencent/tads/data/TadOrder;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->order:Lcom/tencent/tads/data/TadOrder;

    return-object v0
.end method

.method public declared-synchronized getSplashImageBitmap()Landroid/graphics/Bitmap;
    .locals 3

#    monitor-enter p0
#
#    :try_start_0
#    const-string v0, "SplashAdLoader"
#
#    .line 286
#    new-instance v1, Ljava/lang/StringBuilder;
#
#    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
#
#    const-string v2, "getSplashImageBitmap, imageBitmap: "
#
#    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
#
#    iget-object v2, p0, Lcom/tencent/tads/data/SplashAdLoader;->imageBitmap:Landroid/graphics/Bitmap;
#
#    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
#
#    const-string v2, ", imgPath: "
#
#    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
#
#    iget-object v2, p0, Lcom/tencent/tads/data/SplashAdLoader;->imgPath:Ljava/lang/String;
#
#    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
#
#    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
#
#    move-result-object v1
#
#    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
#
#    .line 287
#    iget-object v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->imageBitmap:Landroid/graphics/Bitmap;
#
#    if-nez v0, :cond_1
#
#    .line 288
#    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
#
#    move-result-wide v0
#
#    sput-wide v0, Lcom/tencent/tads/utility/CostAnalysis;->preBitmapDecodeStartTime:J
#
#    .line 289
#    invoke-virtual {p0}, Lcom/tencent/tads/data/SplashAdLoader;->getOrder()Lcom/tencent/tads/data/TadOrder;
#
#    move-result-object v0
#
#    if-eqz v0, :cond_0
#
#    .line 291
#    iget-object v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->imgPath:Ljava/lang/String;
#
#    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
#
#    move-result v0
#
#    if-nez v0, :cond_0
#
#    .line 292
#    invoke-static {}, Lcom/tencent/tads/fodder/TadImageManager;->get()Lcom/tencent/tads/fodder/TadImageManager;
#
#    move-result-object v0
#
#    iget-object v1, p0, Lcom/tencent/tads/data/SplashAdLoader;->imgPath:Ljava/lang/String;
#
#    invoke-virtual {v0, v1}, Lcom/tencent/tads/fodder/TadImageManager;->getCacheFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
#
#    move-result-object v0
#
#    iput-object v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->imageBitmap:Landroid/graphics/Bitmap;
#
#    .line 295
#    :cond_0
#    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
#
#    move-result-wide v0
#
#    sput-wide v0, Lcom/tencent/tads/utility/CostAnalysis;->preBitmapDecodeEndTime:J
#
#    .line 297
#    :cond_1
#    iget-object v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->imageBitmap:Landroid/graphics/Bitmap;
#    :try_end_0
#    .catchall {:try_start_0 .. :try_end_0} :catchall_0
#
#    monitor-exit p0
#
#    return-object v0
#
#    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSplashMargin()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->splashMargin:I

    return v0
.end method

.method public getTimelife()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->timelife:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->videoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoTimelife()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->videoTimelife:I

    return v0
.end method

.method public getVolume()I
    .locals 1

    .line 206
    iget v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->volume:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->width:I

    return v0
.end method

.method public gotoNextPlayroundForDisplay()V
    .locals 2

#    .line 269
#    new-instance v0, Ljava/lang/StringBuilder;
#
#    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
#
#    const-string v1, "gotoNextPlayroundForNoDisplay, order: "
#
#    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
#
#    iget-object v1, p0, Lcom/tencent/tads/data/SplashAdLoader;->order:Lcom/tencent/tads/data/TadOrder;
#
#    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
#
#    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
#
#    move-result-object v0
#
#    const-string v1, "SplashAdLoader"
#
#    invoke-static {v1, v0}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
#
#    .line 270
#    iget-object v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->order:Lcom/tencent/tads/data/TadOrder;
#
#    if-eqz v0, :cond_1
#
#    .line 271
#    iget-boolean v0, v0, Lcom/tencent/tads/data/TadOrder;->isFirstPlaySplash:Z
#
#    if-nez v0, :cond_0
#
#    .line 272
#    invoke-static {}, Lcom/tencent/tads/manager/TadManager;->getInstance()Lcom/tencent/tads/manager/TadManager;
#
#    move-result-object v0
#
#    invoke-virtual {v0}, Lcom/tencent/tads/manager/TadManager;->addPlayRound()V
#
#    goto :goto_0
#
#    .line 275
#    :cond_0
#    sget-object v0, Lcom/tencent/tads/utility/TadUtil;->CONTEXT:Landroid/content/Context;
#
#    invoke-static {v0}, Lcom/tencent/tads/utility/SplashSharedPreferencesUtil;->getInstance(Landroid/content/Context;)Lcom/tencent/tads/utility/SplashSharedPreferencesUtil;
#
#    move-result-object v0
#
#    invoke-static {}, Lcom/tencent/tads/utility/TadUtil;->getTodayDate()Ljava/lang/String;
#
#    move-result-object v1
#
#    invoke-virtual {v0, v1}, Lcom/tencent/tads/utility/SplashSharedPreferencesUtil;->putFirstPlayDate(Ljava/lang/String;)V
#
#    :cond_1
#    :goto_0
    return-void
.end method

.method public gotoNextPlayroundForNoDisplay()V
    .locals 2

#    .line 258
#    new-instance v0, Ljava/lang/StringBuilder;
#
#    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
#
#    const-string v1, "gotoNextPlayroundForNoDisplay, order: "
#
#    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
#
#    iget-object v1, p0, Lcom/tencent/tads/data/SplashAdLoader;->order:Lcom/tencent/tads/data/TadOrder;
#
#    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
#
#    const-string v1, ", isFirstPlay: "
#
#    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
#
#    iget-boolean v1, p0, Lcom/tencent/tads/data/SplashAdLoader;->isFirstPlay:Z
#
#    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
#
#    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
#
#    move-result-object v0
#
#    const-string v1, "SplashAdLoader"
#
#    invoke-static {v1, v0}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
#
#    .line 259
#    iget-object v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->order:Lcom/tencent/tads/data/TadOrder;
#
#    if-nez v0, :cond_1
#
#    .line 260
#    iget-boolean v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->isFirstPlay:Z
#
#    if-nez v0, :cond_0
#
#    .line 261
#    invoke-static {}, Lcom/tencent/tads/manager/TadManager;->getInstance()Lcom/tencent/tads/manager/TadManager;
#
#    move-result-object v0
#
#    invoke-virtual {v0}, Lcom/tencent/tads/manager/TadManager;->addPlayRound()V
#
#    .line 264
#    :cond_0
#    invoke-static {}, Lcom/tencent/tads/report/SplashReporter;->getInstance()Lcom/tencent/tads/report/SplashReporter;
#
#    move-result-object v0
#
#    invoke-virtual {v0}, Lcom/tencent/tads/report/SplashReporter;->reportNow()V
#
#    :cond_1
    return-void
.end method

.method public invalidateOrder()V
    .locals 2

#    const-string v0, "SplashAdLoader"
#
#    const-string v1, "invalidateOrder"
#
#    .line 67
#    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
#
#    const/4 v0, -0x1
#
#    .line 68
#    iput v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->type:I
#
#    const/4 v0, 0x0
#
#    .line 69
#    iput-object v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->order:Lcom/tencent/tads/data/TadOrder;
#
#    .line 70
#    iput-object v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->emptyItem:Lcom/tencent/tads/data/TadEmptyItem;

    return-void
.end method

.method public isValidImageAd()Z
    .locals 1

#    .line 219
#    iget v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->height:I
#
#    if-lez v0, :cond_0
#
#    iget v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->width:I
#
#    if-lez v0, :cond_0
#
#    const/4 v0, 0x1
#
#    goto :goto_0
#
#    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidSplash()Z
    .locals 4

#    .line 210
#    iget-object v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->order:Lcom/tencent/tads/data/TadOrder;

    const/4 v1, 0x0

#    const-string v2, "SplashAdLoader"
#
#    if-nez v0, :cond_0
#
#    const-string v0, "isValidSplash = false, order == null."
#
#    .line 211
#    invoke-static {v2, v0}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

#    .line 214
#    :cond_0
#    new-instance v0, Ljava/lang/StringBuilder;
#
#    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
#
#    const-string v3, "isValidSplash, type: "
#
#    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
#
#    iget v3, p0, Lcom/tencent/tads/data/SplashAdLoader;->type:I
#
#    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
#
#    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
#
#    move-result-object v0
#
#    invoke-static {v2, v0}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
#
#    .line 215
#    iget v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->type:I
#
#    const/4 v2, 0x1
#
#    if-eqz v0, :cond_1
#
#    if-eq v0, v2, :cond_1
#
#    const/4 v3, 0x2
#
#    if-ne v0, v3, :cond_2
#
#    :cond_1
#    const/4 v1, 0x1
#
#    :cond_2
#    return v1
.end method

.method public loadRTAdvert(Ljava/lang/Runnable;J)V
    .locals 2

#    .line 53
#    invoke-static {}, Lcom/tencent/tads/manager/TadManager;->getInstance()Lcom/tencent/tads/manager/TadManager;
#
#    move-result-object v0
#
#    invoke-virtual {v0, p0}, Lcom/tencent/tads/manager/TadManager;->getRealTimeSplashAd(Lcom/tencent/tads/data/SplashAdLoader;)V
#
#    if-eqz p1, :cond_0
#
#    .line 55
#    iput-object p1, p0, Lcom/tencent/tads/data/SplashAdLoader;->mPostRunnable:Ljava/lang/Runnable;
#
#    .line 56
#    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;
#
#    const/4 v1, 0x1
#
#    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V
#
#    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
#
#    invoke-virtual {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
#
#    :cond_0
    return-void
.end method

.method public onLviewFinished()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->mPostRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onPageShown()V
    .locals 0

    .line 225
    invoke-direct {p0}, Lcom/tencent/tads/data/SplashAdLoader;->pingEmpty()V

    .line 226
    invoke-virtual {p0}, Lcom/tencent/tads/data/SplashAdLoader;->gotoNextPlayroundForNoDisplay()V

    return-void
.end method

.method public pingExposure()V
    .locals 3

#    .line 234
#    iget-object v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->order:Lcom/tencent/tads/data/TadOrder;
#
#    if-eqz v0, :cond_0
#
#    iget-boolean v0, v0, Lcom/tencent/tads/data/TadOrder;->isExposured:Z
#
#    if-nez v0, :cond_0
#
#    const-string v0, "SplashAdLoader"
#
#    const-string/jumbo v1, "pingExposure, ping exposure."
#
#    .line 235
#    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
#
#    .line 236
#    invoke-static {}, Lcom/tencent/tads/report/SplashReporter;->getInstance()Lcom/tencent/tads/report/SplashReporter;
#
#    move-result-object v0
#
#    iget-object v1, p0, Lcom/tencent/tads/data/SplashAdLoader;->order:Lcom/tencent/tads/data/TadOrder;
#
#    const/4 v2, 0x1
#
#    invoke-virtual {v0, v1, v2}, Lcom/tencent/tads/report/SplashReporter;->pingExp(Lcom/tencent/tads/data/TadPojo;Z)V
#
#    .line 237
#    invoke-static {}, Lcom/tencent/tads/report/SplashReporter;->getInstance()Lcom/tencent/tads/report/SplashReporter;
#
#    move-result-object v0
#
#    iget-object v1, p0, Lcom/tencent/tads/data/SplashAdLoader;->order:Lcom/tencent/tads/data/TadOrder;
#
#    const/4 v2, 0x0
#
#    invoke-virtual {v0, v1, v2}, Lcom/tencent/tads/report/SplashReporter;->pingExp(Lcom/tencent/tads/data/TadPojo;Z)V
#
#    .line 238
#    invoke-static {}, Lcom/tencent/tads/report/SplashReporter;->getInstance()Lcom/tencent/tads/report/SplashReporter;
#
#    move-result-object v0
#
#    iget-object v1, p0, Lcom/tencent/tads/data/SplashAdLoader;->order:Lcom/tencent/tads/data/TadOrder;
#
#    invoke-virtual {v0, v1}, Lcom/tencent/tads/report/SplashReporter;->fillPing(Lcom/tencent/tads/data/TadPojo;)V
#
#    .line 240
#    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
#
#    move-result-wide v0
#
#    invoke-static {v2, v0, v1}, Lcom/tencent/tads/utility/SplashHighSpeedFileUtils;->putLastOrderPlayTime(ZJ)V
#
#    :cond_0
    return-void
.end method

.method public recycleImageBitmap()V
    .locals 1
#
#    const/4 v0, 0x0
#
#    .line 317
#    iput-object v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->imageBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public removePostRunnable()V
    .locals 1

#    const/4 v0, 0x0
#
#    .line 230
#    iput-object v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->mPostRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setOrder(Lcom/tencent/tads/data/TadOrder;I)V
    .locals 4

##    .line 74
##    new-instance v0, Ljava/lang/StringBuilder;
##
##    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
##
##    const-string/jumbo v1, "setOrder, type: "
##
##    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
##
##    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
##
##    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
##
##    move-result-object v0
##
##    const-string v1, "SplashAdLoader"
##
##    invoke-static {v1, v0}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
##
##    if-nez p1, :cond_0
##
##    return-void
##
##    :cond_0
##    if-eqz p2, :cond_8
##
##    const/4 v0, 0x1
##
##    const/4 v2, 0x0
##
##    const/16 v3, 0x1388
##
##    if-eq p2, v0, :cond_4
##
##    const/4 v0, 0x2
##
##    if-eq p2, v0, :cond_1
#
#    return-void
#
#    .line 80
#    :cond_1
#    iget v0, p1, Lcom/tencent/tads/data/TadOrder;->h5TimeLife:I
#
#    mul-int/lit16 v0, v0, 0x3e8
#
#    iput v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->h5TimeLife:I
#
#    .line 81
#    iget v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->h5TimeLife:I
#
#    if-gtz v0, :cond_2
#
#    .line 82
#    iput v3, p0, Lcom/tencent/tads/data/SplashAdLoader;->h5TimeLife:I
#
#    .line 84
#    :cond_2
#    iget-object v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->h5Path:Ljava/lang/String;
#
#    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
#
#    move-result v0
#
#    if-nez v0, :cond_3
#
#    .line 85
#    iput p2, p0, Lcom/tencent/tads/data/SplashAdLoader;->type:I
#
#    goto :goto_0
#
#    .line 87
#    :cond_3
#    iput v2, p0, Lcom/tencent/tads/data/SplashAdLoader;->type:I
#
#    goto :goto_0
#
#    .line 91
#    :cond_4
#    iget v0, p1, Lcom/tencent/tads/data/TadOrder;->videoTimeLife:I
#
#    mul-int/lit16 v0, v0, 0x3e8
#
#    iput v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->videoTimelife:I
#
#    .line 92
#    iget v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->videoTimelife:I
#
#    if-gtz v0, :cond_5
#
#    .line 93
#    iput v3, p0, Lcom/tencent/tads/data/SplashAdLoader;->videoTimelife:I
#
#    .line 95
#    :cond_5
#    iget v0, p1, Lcom/tencent/tads/data/TadOrder;->volume:I
#
#    if-ltz v0, :cond_6
#
#    iget v0, p1, Lcom/tencent/tads/data/TadOrder;->volume:I
#
#    const/16 v3, 0x64
#
#    if-gt v0, v3, :cond_6
#
#    .line 96
#    iget v0, p1, Lcom/tencent/tads/data/TadOrder;->volume:I
#
#    iput v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->volume:I
#
#    .line 98
#    :cond_6
#    iget-object v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->videoPath:Ljava/lang/String;
#
#    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
#
#    move-result v0
#
#    if-nez v0, :cond_7
#
#    .line 99
#    iput p2, p0, Lcom/tencent/tads/data/SplashAdLoader;->type:I
#
#    goto :goto_0
#
#    .line 101
#    :cond_7
#    iput v2, p0, Lcom/tencent/tads/data/SplashAdLoader;->type:I
#
#    goto :goto_0
#
#    .line 105
#    :cond_8
#    iget v0, p1, Lcom/tencent/tads/data/TadOrder;->timelife:I
#
#    if-lez v0, :cond_9
#
#    .line 106
#    iget v0, p1, Lcom/tencent/tads/data/TadOrder;->timelife:I
#
#    mul-int/lit16 v0, v0, 0x3e8
#
#    iput v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->timelife:I
#
#    .line 108
#    :cond_9
#    iput p2, p0, Lcom/tencent/tads/data/SplashAdLoader;->type:I
#
#    .line 114
#    :goto_0
#    iput-object p1, p0, Lcom/tencent/tads/data/SplashAdLoader;->order:Lcom/tencent/tads/data/TadOrder;
#
#    .line 115
#    iget-object p2, p0, Lcom/tencent/tads/data/SplashAdLoader;->order:Lcom/tencent/tads/data/TadOrder;
#
#    iget v0, p0, Lcom/tencent/tads/data/SplashAdLoader;->type:I
#
#    iput v0, p2, Lcom/tencent/tads/data/TadOrder;->realPlayType:I
#
#    .line 116
#    iget-object p2, p1, Lcom/tencent/tads/data/TadOrder;->title:Ljava/lang/String;
#
#    iput-object p2, p0, Lcom/tencent/tads/data/SplashAdLoader;->title:Ljava/lang/String;
#
#    .line 117
#    iget-object p2, p1, Lcom/tencent/tads/data/TadOrder;->abstractStr:Ljava/lang/String;
#
#    iput-object p2, p0, Lcom/tencent/tads/data/SplashAdLoader;->desc:Ljava/lang/String;
#
#    .line 118
#    iget-object p2, p1, Lcom/tencent/tads/data/TadOrder;->url:Ljava/lang/String;
#
#    iput-object p2, p0, Lcom/tencent/tads/data/SplashAdLoader;->url:Ljava/lang/String;
#
#    .line 119
#    iget p2, p1, Lcom/tencent/tads/data/TadOrder;->openSchemeType:I
#
#    iput p2, p0, Lcom/tencent/tads/data/SplashAdLoader;->openSchemeType:I
#
#    .line 120
#    iget-object p2, p1, Lcom/tencent/tads/data/TadOrder;->videoVid:Ljava/lang/String;
#
#    iput-object p2, p0, Lcom/tencent/tads/data/SplashAdLoader;->linkToVid:Ljava/lang/String;
#
#    .line 121
#    iget-object p1, p1, Lcom/tencent/tads/data/TadOrder;->icon:Ljava/lang/String;
#
#    iput-object p1, p0, Lcom/tencent/tads/data/SplashAdLoader;->icon:Ljava/lang/String;
#
#    .line 122
#    iget-object p1, p0, Lcom/tencent/tads/data/SplashAdLoader;->icon:Ljava/lang/String;
#
#    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
#
#    move-result p1
#
#    if-nez p1, :cond_a
#
#    iget-object p1, p0, Lcom/tencent/tads/data/SplashAdLoader;->icon:Ljava/lang/String;
#
#    const-string/jumbo p2, "\u8df3\u8fc7\u5e7f\u544a"
#
#    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
#
#    move-result p1
#
#    if-eqz p1, :cond_a
#
#    const-string/jumbo p1, "\u8df3\u8fc7"
#
#    .line 123
#    iput-object p1, p0, Lcom/tencent/tads/data/SplashAdLoader;->icon:Ljava/lang/String;
#
#    .line 125
#    :cond_a
#    iget-object p1, p0, Lcom/tencent/tads/data/SplashAdLoader;->order:Lcom/tencent/tads/data/TadOrder;
#
#    iget p1, p1, Lcom/tencent/tads/data/TadOrder;->logoHeight:I
#
#    if-lez p1, :cond_b
#
#    .line 126
#    iget-object p1, p0, Lcom/tencent/tads/data/SplashAdLoader;->order:Lcom/tencent/tads/data/TadOrder;
#
#    iget p1, p1, Lcom/tencent/tads/data/TadOrder;->logoHeight:I
#
#    iput p1, p0, Lcom/tencent/tads/data/SplashAdLoader;->splashMargin:I
#
#    .line 128
#    :cond_b
#    iget-object p1, p0, Lcom/tencent/tads/data/SplashAdLoader;->imgPath:Ljava/lang/String;
#
#    if-nez p1, :cond_d
#
#    .line 129
#    iget-boolean p1, p0, Lcom/tencent/tads/data/SplashAdLoader;->shareMode:Z
#
#    if-eqz p1, :cond_c
#
#    .line 130
#    invoke-static {}, Lcom/tencent/tads/fodder/TadImageManager;->get()Lcom/tencent/tads/fodder/TadImageManager;
#
#    move-result-object p1
#
#    iget-object p2, p0, Lcom/tencent/tads/data/SplashAdLoader;->order:Lcom/tencent/tads/data/TadOrder;
#
#    iget-object p2, p2, Lcom/tencent/tads/data/TadOrder;->resourceUrl0:Ljava/lang/String;
#
#    invoke-virtual {p1, p2}, Lcom/tencent/tads/fodder/TadImageManager;->getSharedFileName(Ljava/lang/String;)Ljava/lang/String;
#
#    move-result-object p1
#
#    iput-object p1, p0, Lcom/tencent/tads/data/SplashAdLoader;->imgPath:Ljava/lang/String;
#
#    goto :goto_1
#
#    .line 132
#    :cond_c
#    invoke-static {}, Lcom/tencent/tads/fodder/TadImageManager;->get()Lcom/tencent/tads/fodder/TadImageManager;
#
#    move-result-object p1
#
#    iget-object p2, p0, Lcom/tencent/tads/data/SplashAdLoader;->order:Lcom/tencent/tads/data/TadOrder;
#
#    iget-object p2, p2, Lcom/tencent/tads/data/TadOrder;->resourceUrl0:Ljava/lang/String;
#
#    invoke-virtual {p1, p2}, Lcom/tencent/tads/fodder/TadImageManager;->getFileName(Ljava/lang/String;)Ljava/lang/String;
#
#    move-result-object p1
#
#    iput-object p1, p0, Lcom/tencent/tads/data/SplashAdLoader;->imgPath:Ljava/lang/String;
#
#    .line 135
#    :cond_d
#    :goto_1
#    new-instance p1, Ljava/io/File;
#
#    iget-object p2, p0, Lcom/tencent/tads/data/SplashAdLoader;->imgPath:Ljava/lang/String;
#
#    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
#
#    .line 136
#    invoke-static {}, Lcom/tencent/tads/fodder/TadImageManager;->get()Lcom/tencent/tads/fodder/TadImageManager;
#
#    move-result-object p2
#
#    invoke-virtual {p2, p1}, Lcom/tencent/tads/fodder/TadImageManager;->decodeBitmapBounds(Ljava/io/File;)Landroid/graphics/BitmapFactory$Options;
#
#    move-result-object p1
#
#    .line 137
#    iget p2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
#
#    iput p2, p0, Lcom/tencent/tads/data/SplashAdLoader;->height:I
#
#    .line 138
#    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I
#
#    iput p1, p0, Lcom/tencent/tads/data/SplashAdLoader;->width:I
#
#    .line 139
#    new-instance p1, Ljava/lang/StringBuilder;
#
#    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V
#
#    const-string/jumbo p2, "setOrder, height: "
#
#    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
#
#    iget p2, p0, Lcom/tencent/tads/data/SplashAdLoader;->height:I
#
#    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
#
#    const-string p2, ", width: "
#
#    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
#
#    iget p2, p0, Lcom/tencent/tads/data/SplashAdLoader;->width:I
#
#    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
#
#    const-string p2, ", type: "
#
#    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
#
#    iget p2, p0, Lcom/tencent/tads/data/SplashAdLoader;->type:I
#
#    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
#
#    const-string p2, ", imgPath: "
#
#    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
#
#    iget-object p2, p0, Lcom/tencent/tads/data/SplashAdLoader;->imgPath:Ljava/lang/String;
#
#    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
#
#    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
#
#    move-result-object p1
#
#    invoke-static {v1, p1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
#
#    .line 140
#    iget p1, p0, Lcom/tencent/tads/data/SplashAdLoader;->type:I
#
#    if-nez p1, :cond_f
#
#    iget p1, p0, Lcom/tencent/tads/data/SplashAdLoader;->height:I
#
#    if-lez p1, :cond_e
#
#    iget p1, p0, Lcom/tencent/tads/data/SplashAdLoader;->width:I
#
#    if-gtz p1, :cond_f
#
#    :cond_e
#    const/4 p1, -0x1
#
#    .line 141
#    iput p1, p0, Lcom/tencent/tads/data/SplashAdLoader;->type:I
#
#    :cond_f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/tads/data/SplashAdLoader;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@SPLASH:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/tads/data/SplashAdLoader;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tads/data/SplashAdLoader;->order:Lcom/tencent/tads/data/TadOrder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryGetSplashImageBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
#
#    const/4 v0, 0x0
#
#    :goto_0
#    if-ge v0, p1, :cond_1
#
#    .line 303
#    iget-object v1, p0, Lcom/tencent/tads/data/SplashAdLoader;->imageBitmap:Landroid/graphics/Bitmap;
#
#    if-eqz v1, :cond_0
#
#    return-object v1
#
#    :cond_0
#    const-wide/16 v1, 0x1
#
#    .line 307
#    :try_start_0
#    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
#    :try_end_0
#    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
#
#    :catch_0
#    add-int/lit8 v0, v0, 0x1
#
#    goto :goto_0
#
#    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

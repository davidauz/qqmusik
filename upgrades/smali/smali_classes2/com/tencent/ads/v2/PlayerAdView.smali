.class public abstract Lcom/tencent/ads/v2/PlayerAdView;
.super Lcom/tencent/ads/view/AdViewBase;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/adcore/view/AdCorePageListener;
.implements Lcom/tencent/ads/plugin/RichMediaAdView;
.implements Lcom/tencent/ads/v2/PlayerAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/ads/v2/PlayerAdView$DownloadReceiver;,
        Lcom/tencent/ads/v2/PlayerAdView$InstallReceiver;,
        Lcom/tencent/ads/v2/PlayerAdView$AdLandingReceiver;,
        Lcom/tencent/ads/v2/PlayerAdView$ConnectionChangeReceiver;,
        Lcom/tencent/ads/v2/PlayerAdView$ScreenLockReceiver;,
        Lcom/tencent/ads/v2/PlayerAdView$SaveCookieRunnable;,
        Lcom/tencent/ads/v2/PlayerAdView$ViewState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field protected hasMonitorPinged:Z

.field protected isAdPrepared:Z

.field protected isRichMediaPinged:Z

.field protected mAdConfig:Lcom/tencent/ads/service/AdConfig;

.field protected mAdListener:Lcom/tencent/ads/view/AdListener;

.field protected mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

.field protected mAdPage:Lcom/tencent/adcore/view/AdCorePage;

.field protected mAdRequest:Lcom/tencent/ads/view/AdRequest;

.field protected mAdResponse:Lcom/tencent/ads/service/AdResponse;

.field protected mAdServiceHandler:Lcom/tencent/ads/view/AdServiceHandler;

.field protected mAdType:I

.field protected mAnchor:Landroid/view/ViewGroup;

.field protected mAppAdConfig:Lcom/tencent/ads/service/AppAdConfig;

.field protected mAppConfigController:Lcom/tencent/ads/service/AppConfigController;

.field protected mBaseMraidAdView:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;

.field private mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

.field protected mContext:Landroid/content/Context;

.field private mDownloadReceiver:Landroid/content/BroadcastReceiver;

.field protected mErrorCode:Lcom/tencent/ads/view/ErrorCode;

.field private mInstallReceiver:Landroid/content/BroadcastReceiver;

.field protected mIsAppBackground:Z

.field protected mIsEnableClick:Z

.field protected mIsMiniView:Z

.field protected mIsNewsApp:Z

.field private mIsPausing:Z

.field protected mIsTVApp:Z

.field protected mIsVideoApp:Z

.field private mLandingReceiver:Landroid/content/BroadcastReceiver;

.field protected mPicInPicState:I

.field private mScreenLockReceiver:Landroid/content/BroadcastReceiver;

.field protected mStartLoadTime:J

.field protected mViewState:Lcom/tencent/ads/v2/PlayerAdView$ViewState;

.field protected openAdDialog:Landroid/app/Dialog;

.field protected uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    const-class v0, Lcom/tencent/ads/v2/PlayerAdView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 525
    invoke-direct {p0, p1}, Lcom/tencent/ads/view/AdViewBase;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 95
    iput v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdType:I

    const/4 v1, 0x0

    .line 99
    iput-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    const/4 v2, 0x0

    .line 103
    iput-boolean v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->hasMonitorPinged:Z

    const-wide/16 v3, 0x0

    .line 104
    iput-wide v3, p0, Lcom/tencent/ads/v2/PlayerAdView;->mStartLoadTime:J

    .line 106
    iput-boolean v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->isRichMediaPinged:Z

    .line 107
    iput-boolean v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mIsAppBackground:Z

    .line 109
    iput-boolean v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mIsTVApp:Z

    .line 110
    iput-boolean v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mIsNewsApp:Z

    .line 111
    iput-boolean v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mIsVideoApp:Z

    .line 112
    iput-boolean v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mIsMiniView:Z

    const/4 v2, 0x1

    .line 113
    iput-boolean v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mIsEnableClick:Z

    .line 123
    iput-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdPage:Lcom/tencent/adcore/view/AdCorePage;

    .line 129
    iput v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mPicInPicState:I

    .line 131
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView$ViewState;->DEFAULT:Lcom/tencent/ads/v2/PlayerAdView$ViewState;

    iput-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mViewState:Lcom/tencent/ads/v2/PlayerAdView$ViewState;

    .line 142
    new-instance v0, Lcom/tencent/ads/v2/PlayerAdView$1;

    invoke-direct {v0, p0}, Lcom/tencent/ads/v2/PlayerAdView$1;-><init>(Lcom/tencent/ads/v2/PlayerAdView;)V

    iput-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->uiHandler:Landroid/os/Handler;

    .line 526
    iput-object p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    .line 527
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->initialize()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 86
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private handleLandscape()V
    .locals 2

    .line 778
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v1, "handleLandscape"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->uiHandler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private handlePortrait()V
    .locals 2

    .line 783
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v1, "handlePortrait"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->uiHandler:Landroid/os/Handler;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private initGlobalParams(Landroid/content/Context;)V
    .locals 1

    .line 561
    invoke-static {p1}, Lcom/tencent/ads/utility/Utils;->initParams(Landroid/content/Context;)V

    .line 563
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x9

    if-lt p1, v0, :cond_0

    .line 564
    invoke-static {}, Lcom/tencent/ads/service/AdCookie;->getInstance()Lcom/tencent/ads/service/AdCookie;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/ads/service/AdCookie;->initCookie()V

    .line 567
    :cond_0
    invoke-static {}, Lcom/tencent/ads/service/AdConfig;->getInstance()Lcom/tencent/ads/service/AdConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/ads/service/AdConfig;->init()V

    return-void
.end method

.method private isCanvasAd(Lcom/tencent/ads/service/AdResponse;I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 588
    invoke-virtual {p1}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 589
    invoke-virtual {p1}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/tencent/ads/data/AdItem;->getCanvasHorizontalUrl()Ljava/lang/String;

    move-result-object v1

    .line 590
    invoke-virtual {p1}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getCanvasVerticalUrl()Ljava/lang/String;

    move-result-object p1

    .line 591
    invoke-static {v1}, Lcom/tencent/ads/utility/Utils;->isHttpUrl(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/tencent/ads/utility/Utils;->isHttpUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private registerLandingReceiver()V
    .locals 3

    .line 1422
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mLandingReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    .line 1425
    :cond_0
    new-instance v0, Lcom/tencent/ads/v2/PlayerAdView$AdLandingReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/ads/v2/PlayerAdView$AdLandingReceiver;-><init>(Lcom/tencent/ads/v2/PlayerAdView;Lcom/tencent/ads/v2/PlayerAdView$1;)V

    iput-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mLandingReceiver:Landroid/content/BroadcastReceiver;

    .line 1427
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "landing_broadcast_action"

    .line 1428
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1429
    iget-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mLandingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1430
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v1, "registerLandingReceiver"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public attachTo(Landroid/view/ViewGroup;)V
    .locals 2

    .line 481
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v1, "attachTo"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAnchor:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAnchor:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    return-void

    .line 485
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->findAnchor(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAnchor:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    .line 486
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 487
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 488
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 489
    iput-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 491
    :cond_1
    invoke-static {p1}, Lcom/tencent/ads/utility/Utils;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    .line 494
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    if-nez p1, :cond_3

    .line 495
    sget-object p1, Lcom/tencent/ads/utility/Utils;->CONTEXT:Landroid/content/Context;

    iput-object p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    .line 496
    sget-object p1, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v0, "attachTo: get view attached activity failed"

    invoke-static {p1, v0}, Lcom/tencent/adcore/utility/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :cond_3
    iget-object p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_4

    .line 500
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 502
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->showUI()V

    return-void
.end method

.method public cancelSplashAdCountdown()V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 2

    .line 439
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mViewState:Lcom/tencent/ads/v2/PlayerAdView$ViewState;

    sget-object v1, Lcom/tencent/ads/v2/PlayerAdView$ViewState;->CLOSED:Lcom/tencent/ads/v2/PlayerAdView$ViewState;

    if-eq v0, v1, :cond_0

    .line 441
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v1, "closed"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->remove()V

    .line 443
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView$ViewState;->CLOSED:Lcom/tencent/ads/v2/PlayerAdView$ViewState;

    iput-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mViewState:Lcom/tencent/ads/v2/PlayerAdView$ViewState;

    :cond_0
    return-void
.end method

.method public closeLandingView()V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdPage:Lcom/tencent/adcore/view/AdCorePage;

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0}, Lcom/tencent/adcore/view/AdCorePage;->closeLandingView()V

    :cond_0
    return-void
.end method

.method protected createAdCanvasLandingPageIntent(Lcom/tencent/ads/data/AdItem;)Landroid/content/Intent;
    .locals 5

    const-string v0, "find AdCanvasActivity class failed"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.tencent.qqlive.tad.splash.AdCanvasActivity"

    .line 1332
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1335
    :catchall_0
    sget-object v2, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/tencent/adcore/utility/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    :goto_0
    if-nez v2, :cond_0

    :try_start_1
    const-string v3, "com.tencent.ads.canvasad.AdCanvasActivity"

    .line 1339
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1342
    :catchall_1
    sget-object v3, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/tencent/adcore/utility/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    if-nez v2, :cond_1

    .line 1346
    sget-object p1, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v0, "doClick -> find canvas landing page failed"

    invoke-static {p1, v0}, Lcom/tencent/adcore/utility/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1349
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 1350
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1351
    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getOid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "oid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1352
    iget-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    invoke-virtual {v1}, Lcom/tencent/ads/service/AdMonitor;->getSoid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "soid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1353
    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adtype"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1354
    iget-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    invoke-virtual {v1}, Lcom/tencent/ads/service/AdMonitor;->getRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reqId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1357
    iget-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    if-ne v1, v3, :cond_4

    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    .line 1363
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->getWidth()I

    move-result v1

    sget v4, Lcom/tencent/ads/utility/Utils;->sHeight:I

    if-eq v1, v4, :cond_2

    goto :goto_2

    :goto_3
    if-eqz v1, :cond_5

    .line 1368
    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getCanvasVerticalUrl()Ljava/lang/String;

    move-result-object v3

    .line 1369
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1370
    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getCanvasHorizontalUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    goto :goto_4

    .line 1374
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getCanvasHorizontalUrl()Ljava/lang/String;

    move-result-object v2

    .line 1375
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1376
    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getCanvasVerticalUrl()Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    move-object v3, v2

    :cond_7
    :goto_4
    const-string p1, "isVertical"

    .line 1381
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "canvasUrl"

    .line 1382
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected createAdLandingPageIntent(Ljava/lang/String;Lcom/tencent/ads/data/AdItem;)Landroid/content/Intent;
    .locals 4

    const-string v0, "find AdLandingPageActivity class failed"

    :try_start_0
    const-string v1, "com.tencent.qqlive.tad.splash.AdLandingPageActivity"

    .line 1295
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1298
    :catchall_0
    sget-object v1, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/adcore/utility/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    :try_start_1
    const-string v2, "com.tencent.tads.stream.splash.AdLandingPageActivity"

    .line 1302
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1304
    :catchall_1
    sget-object v2, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/tencent/adcore/utility/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 1308
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    .line 1310
    :cond_1
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/ads/utility/SystemUtil;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".Tencent.AdLandingPage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1312
    :goto_2
    invoke-virtual {p2}, Lcom/tencent/ads/data/AdItem;->getOid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1313
    invoke-virtual {p2}, Lcom/tencent/ads/data/AdItem;->useSafeInterface()Z

    move-result v2

    .line 1314
    invoke-virtual {p2}, Lcom/tencent/ads/data/AdItem;->getShareInfo()Lcom/tencent/adcore/data/AdShareInfo;

    move-result-object p2

    const-string v3, "landing_page_oid"

    .line 1316
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "use_safe_interface"

    .line 1317
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "landing_page_player"

    .line 1318
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "share_info"

    .line 1319
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "AD_LANDING_PAGE_URL"

    .line 1320
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 1321
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1323
    iget-object p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    if-eqz p1, :cond_2

    .line 1324
    invoke-virtual {p1}, Lcom/tencent/ads/view/AdRequest;->getRequestId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "request_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    return-object v0
.end method

.method protected createButton(Ljava/lang/String;)Landroid/widget/Button;
    .locals 3

    .line 1443
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1444
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1445
    sget v1, Lcom/tencent/ads/utility/Utils;->sDensity:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {p1, v1}, Lcom/tencent/ads/utility/Utils;->drawableFromAssets(Ljava/lang/String;F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method protected destroy()V
    .locals 2

    .line 959
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->uiHandler:Landroid/os/Handler;

    const/16 v1, 0x456

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected destroyUI()V
    .locals 2

    .line 862
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v1, "destroyUI"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 863
    iput-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAnchor:Landroid/view/ViewGroup;

    .line 864
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->openAdDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->openAdDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected destroyVariable()V
    .locals 2

    .line 870
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v1, "destroyVariable"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 872
    invoke-virtual {v0, v1}, Lcom/tencent/ads/view/AdRequest;->setAdListener(Lcom/tencent/ads/view/AdListener;)V

    .line 874
    :cond_0
    iput-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    .line 875
    iput-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method protected doClick(Lcom/tencent/ads/service/AdResponse;I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 978
    invoke-virtual {p1}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v1

    array-length v1, v1

    if-le v1, p2, :cond_0

    .line 979
    invoke-virtual {p1}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {p0, v1}, Lcom/tencent/ads/v2/PlayerAdView;->getAdClickUrl(Lcom/tencent/ads/data/AdItem;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 981
    invoke-virtual {p0, p1, p2}, Lcom/tencent/ads/v2/PlayerAdView;->isAdClicked(Lcom/tencent/ads/service/AdResponse;I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 985
    :cond_1
    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/tencent/ads/v2/PlayerAdView;->doClick(Ljava/lang/String;Lcom/tencent/ads/service/AdResponse;I[Lcom/tencent/ads/data/ReportClickItem;)V

    return-void

    .line 982
    :cond_2
    :goto_1
    sget-object p1, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string p2, "doClick cancel: url is null or is not clickable ad"

    invoke-static {p1, p2}, Lcom/tencent/adcore/utility/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected doClick(Ljava/lang/String;Lcom/tencent/ads/service/AdResponse;I[Lcom/tencent/ads/data/ReportClickItem;)V
    .locals 7

    .line 989
    invoke-virtual {p2}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v0

    aget-object v2, v0, p3

    .line 990
    invoke-virtual {v2}, Lcom/tencent/ads/data/AdItem;->getLcount()I

    move-result v0

    .line 991
    invoke-static {p2, v0}, Lcom/tencent/ads/service/AdPing;->getClickMap(Lcom/tencent/ads/service/AdResponse;I)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tencent/ads/service/AdResponse;->getAdRequest()Lcom/tencent/ads/view/AdRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/ads/view/AdRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {p1, v0, v3, v1}, Lcom/tencent/ads/network/InternetService;->createUrl(Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 993
    invoke-virtual {p0, p2, p3}, Lcom/tencent/ads/v2/PlayerAdView;->isDownloadAd(Lcom/tencent/ads/service/AdResponse;I)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v1, p0

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    .line 994
    invoke-virtual/range {v1 .. v6}, Lcom/tencent/ads/v2/PlayerAdView;->handlerDownloadAdClick(Lcom/tencent/ads/data/AdItem;Ljava/lang/String;Lcom/tencent/ads/service/AdResponse;I[Lcom/tencent/ads/data/ReportClickItem;)V

    return-void

    .line 997
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/tencent/ads/v2/PlayerAdView;->isCanvasAd(Lcom/tencent/ads/service/AdResponse;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 998
    invoke-virtual {p0, v2, v3, p4}, Lcom/tencent/ads/v2/PlayerAdView;->handlerCanvasAdClick(Lcom/tencent/ads/data/AdItem;Ljava/lang/String;[Lcom/tencent/ads/data/ReportClickItem;)V

    return-void

    .line 1000
    :cond_1
    invoke-virtual {p0, v2}, Lcom/tencent/ads/v2/PlayerAdView;->isWechatMiniProgram(Lcom/tencent/ads/data/AdItem;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1002
    invoke-static {}, Lcom/tencent/adcore/wechat/WechatManager;->getInstance()Lcom/tencent/adcore/wechat/WechatManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/adcore/wechat/WechatManager;->isWeixinInstalled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1003
    invoke-virtual {p0, v2, v3, p4}, Lcom/tencent/ads/v2/PlayerAdView;->handlerWechatMiniProgramAdClick(Lcom/tencent/ads/data/AdItem;Ljava/lang/String;[Lcom/tencent/ads/data/ReportClickItem;)Z

    .line 1004
    invoke-static {v3}, Lcom/tencent/ads/service/AdPing;->pingUrl(Ljava/lang/String;)V

    if-nez p4, :cond_2

    .line 1005
    invoke-virtual {v2}, Lcom/tencent/ads/data/AdItem;->getReportClickItems()[Lcom/tencent/ads/data/ReportClickItem;

    move-result-object p4

    :cond_2
    invoke-virtual {p0, p4}, Lcom/tencent/ads/v2/PlayerAdView;->handleClickPing([Lcom/tencent/ads/data/ReportClickItem;)V

    return-void

    .line 1008
    :cond_3
    invoke-virtual {v2}, Lcom/tencent/ads/data/AdItem;->getOid()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "1000011"

    invoke-static {p1, p2}, Lcom/tencent/ads/service/AdPing;->doMindPing(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1010
    :cond_4
    iget-object p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/tencent/adcore/common/utils/OpenAppUtil;->isOpenAppEnable(Lcom/tencent/adcore/data/AdCoreItem;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1011
    invoke-virtual {p0, v2}, Lcom/tencent/ads/v2/PlayerAdView;->handlerOpenAppAdClick(Lcom/tencent/ads/data/AdItem;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1012
    invoke-static {v3}, Lcom/tencent/ads/service/AdPing;->pingUrl(Ljava/lang/String;)V

    if-nez p4, :cond_5

    .line 1013
    invoke-virtual {v2}, Lcom/tencent/ads/data/AdItem;->getReportClickItems()[Lcom/tencent/ads/data/ReportClickItem;

    move-result-object p4

    :cond_5
    invoke-virtual {p0, p4}, Lcom/tencent/ads/v2/PlayerAdView;->handleClickPing([Lcom/tencent/ads/data/ReportClickItem;)V

    return-void

    .line 1019
    :cond_6
    :goto_0
    invoke-virtual {v2}, Lcom/tencent/ads/data/AdItem;->isOpenAppEnable()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1020
    invoke-virtual {v2}, Lcom/tencent/ads/data/AdItem;->getOid()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "1000019"

    invoke-static {p1, p2}, Lcom/tencent/ads/service/AdPing;->doMindPing(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    :cond_7
    sget-object p1, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "doClick: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1024
    invoke-virtual {p0, v3, p1, v2, p4}, Lcom/tencent/ads/v2/PlayerAdView;->openLandingPage(Ljava/lang/String;ZLcom/tencent/ads/data/AdItem;[Lcom/tencent/ads/data/ReportClickItem;)V

    return-void
.end method

.method protected doDestroy()V
    .locals 3

    .line 879
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v1, "doDestroy"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mViewState:Lcom/tencent/ads/v2/PlayerAdView$ViewState;

    sget-object v1, Lcom/tencent/ads/v2/PlayerAdView$ViewState;->DESTROYED:Lcom/tencent/ads/v2/PlayerAdView$ViewState;

    if-ne v0, v1, :cond_0

    .line 881
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v1, "mViewState is destroyed"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 885
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->cancelRequestAd()V

    .line 888
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mScreenLockReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 890
    :try_start_0
    iget-object v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 891
    iput-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mScreenLockReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "unregister ScreenLockReceiver"

    .line 892
    invoke-static {v0}, Lcom/tencent/adcore/utility/SLog;->v(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 897
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 899
    :try_start_1
    iget-object v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 900
    iput-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "unregister ConnectionChangeReceiver"

    .line 901
    invoke-static {v0}, Lcom/tencent/adcore/utility/SLog;->v(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    nop

    .line 906
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mLandingReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 908
    :try_start_2
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mLandingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 909
    iput-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mLandingReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "unregister mLandingReceiver"

    .line 910
    invoke-static {v0}, Lcom/tencent/adcore/utility/SLog;->v(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    nop

    .line 914
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 916
    :try_start_3
    iget-object v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 917
    iput-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "unregister InstallReceiver"

    .line 918
    invoke-static {v0}, Lcom/tencent/adcore/utility/SLog;->v(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    nop

    .line 922
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    .line 924
    :try_start_4
    iget-object v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 925
    iput-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "unregister mDownloadReceiver"

    .line 926
    invoke-static {v0}, Lcom/tencent/adcore/utility/SLog;->v(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    nop

    .line 931
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->handleMonitorPing()V

    .line 932
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_6

    .line 934
    :try_start_5
    invoke-static {}, Lcom/tencent/adcore/utility/WorkThreadManager;->getInstance()Lcom/tencent/adcore/utility/WorkThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/adcore/utility/WorkThreadManager;->getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/tencent/ads/v2/PlayerAdView$SaveCookieRunnable;

    invoke-direct {v2, v1}, Lcom/tencent/ads/v2/PlayerAdView$SaveCookieRunnable;-><init>(Lcom/tencent/ads/v2/PlayerAdView$1;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    .line 936
    sget-object v2, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/adcore/utility/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    :cond_6
    :goto_5
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->destroyVariable()V

    .line 944
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->destroyUI()V

    .line 946
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView$ViewState;->DESTROYED:Lcom/tencent/ads/v2/PlayerAdView$ViewState;

    iput-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mViewState:Lcom/tencent/ads/v2/PlayerAdView$ViewState;

    .line 948
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected doLoadAd(Lcom/tencent/ads/view/AdRequest;)V
    .locals 3

    .line 207
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iput-object p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    .line 209
    invoke-virtual {p1}, Lcom/tencent/ads/view/AdRequest;->getAdType()I

    move-result v0

    iput v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdType:I

    .line 211
    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->initCommonParams(Lcom/tencent/ads/view/AdRequest;)V

    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p1}, Lcom/tencent/ads/view/AdRequest;->markOffline()V

    :cond_0
    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0, v0}, Lcom/tencent/ads/v2/PlayerAdView;->setClickable(Z)V

    if-nez p1, :cond_1

    .line 220
    new-instance p1, Lcom/tencent/ads/view/ErrorCode;

    const/16 v0, 0x71

    const-string v1, "request is null or vid is null or vid is empty."

    invoke-direct {p1, v0, v1}, Lcom/tencent/ads/view/ErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->fireFailedEvent(Lcom/tencent/ads/view/ErrorCode;)V

    return-void

    .line 225
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mIsMiniView:Z

    if-eqz v0, :cond_2

    .line 226
    new-instance p1, Lcom/tencent/ads/view/ErrorCode;

    const/16 v0, 0x79

    const-string v1, "no ad due to mini view."

    invoke-direct {p1, v0, v1}, Lcom/tencent/ads/view/ErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->fireFailedEvent(Lcom/tencent/ads/view/ErrorCode;)V

    return-void

    .line 231
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mIsTVApp:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdConfig:Lcom/tencent/ads/service/AdConfig;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdConfig;->getAdaptor()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const-string v0, "3"

    .line 232
    invoke-virtual {p1, v0}, Lcom/tencent/ads/view/AdRequest;->setDtype(Ljava/lang/String;)V

    .line 236
    :cond_3
    invoke-static {}, Lcom/tencent/ads/utility/AdSetting;->getApp()Lcom/tencent/adcore/utility/AdCoreSetting$APP;

    move-result-object v0

    sget-object v1, Lcom/tencent/adcore/utility/AdCoreSetting$APP;->WUTUOBANG:Lcom/tencent/adcore/utility/AdCoreSetting$APP;

    if-ne v0, v1, :cond_4

    .line 237
    invoke-virtual {p1}, Lcom/tencent/ads/view/AdRequest;->getPu()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 238
    new-instance p1, Lcom/tencent/ads/view/ErrorCode;

    const/16 v0, 0xc8

    const-string v1, "User is vip."

    invoke-direct {p1, v0, v1}, Lcom/tencent/ads/view/ErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->fireFailedEvent(Lcom/tencent/ads/view/ErrorCode;)V

    return-void

    .line 243
    :cond_4
    new-instance v0, Lcom/tencent/ads/view/AdPreChecker;

    invoke-direct {v0}, Lcom/tencent/ads/view/AdPreChecker;-><init>()V

    .line 244
    invoke-virtual {v0, p1}, Lcom/tencent/ads/view/AdPreChecker;->check(Lcom/tencent/ads/view/AdRequest;)Lcom/tencent/ads/view/ErrorCode;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 246
    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->fireFailedEvent(Lcom/tencent/ads/view/ErrorCode;)V

    :cond_5
    return-void
.end method

.method protected doRichMediaClickPing(Lcom/tencent/ads/data/AdItem;Z)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1572
    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->getAdClickUrl(Lcom/tencent/ads/data/AdItem;)Ljava/lang/String;

    move-result-object v0

    .line 1573
    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getLcount()I

    move-result v1

    .line 1574
    iget-object v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-static {v2, v1}, Lcom/tencent/ads/service/AdPing;->getClickMap(Lcom/tencent/ads/service/AdResponse;I)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    invoke-virtual {v3}, Lcom/tencent/ads/view/AdRequest;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/ads/network/InternetService;->createUrl(Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&busi=ping"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/ads/service/AdPing;->pingUrl(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1577
    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getReportClickItems()[Lcom/tencent/ads/data/ReportClickItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->handleClickPing([Lcom/tencent/ads/data/ReportClickItem;)V

    goto :goto_0

    .line 1579
    :cond_0
    sget-object p1, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string p2, "richMediaClickPing needThirdParty ping == false."

    invoke-static {p1, p2}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected findAdRootLayout(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 513
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "player_ad_root_layout"

    .line 517
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 518
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 519
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_2
    return-object v0
.end method

.method protected findAnchor(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    return-object p1
.end method

.method public fireFailedEvent(Lcom/tencent/ads/view/ErrorCode;)V
    .locals 4

    .line 843
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fireFailedEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    invoke-super {p0, p1}, Lcom/tencent/ads/view/AdViewBase;->fireFailedEvent(Lcom/tencent/ads/view/ErrorCode;)V

    .line 847
    iput-object p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    .line 848
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    const/16 v1, 0x65

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 849
    invoke-virtual {p1}, Lcom/tencent/ads/view/ErrorCode;->getCode()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    iget-object v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    invoke-static {v0, v2}, Lcom/tencent/ads/utility/Utils;->isVip(Lcom/tencent/ads/service/AdResponse;Lcom/tencent/ads/view/AdRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-static {v0}, Lcom/tencent/ads/utility/Utils;->isSpecialVideo(Lcom/tencent/ads/service/AdResponse;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 851
    iget-object p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    new-instance v0, Lcom/tencent/ads/view/ErrorCode;

    const/16 v2, 0xc8

    const-string v3, "User is vip."

    invoke-direct {v0, v2, v3}, Lcom/tencent/ads/view/ErrorCode;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/tencent/ads/view/AdListener;->onFailed(Lcom/tencent/ads/view/ErrorCode;)V

    goto :goto_0

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    invoke-interface {v0, p1}, Lcom/tencent/ads/view/AdListener;->onFailed(Lcom/tencent/ads/view/ErrorCode;)V

    .line 856
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/tencent/ads/view/ErrorCode;->getCode()I

    move-result p1

    if-eq p1, v1, :cond_3

    .line 857
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->destroy()V

    :cond_3
    return-void
.end method

.method protected getAdClickUrl(Lcom/tencent/ads/data/AdItem;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 973
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getClickUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAdListener()Lcom/tencent/ads/view/AdListener;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    return-object v0
.end method

.method public getAdRequest()Lcom/tencent/ads/view/AdRequest;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    return-object v0
.end method

.method public getAdResponse()Lcom/tencent/ads/service/AdResponse;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    return-object v0
.end method

.method public getAdType()I
    .locals 1

    .line 350
    iget v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdType:I

    return v0
.end method

.method protected getCurrentAdItem()Lcom/tencent/ads/data/AdItem;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParams()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 1455
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->getCurrentAdItem()Lcom/tencent/ads/data/AdItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1456
    invoke-virtual {v1}, Lcom/tencent/ads/data/AdItem;->isRichMediaAd()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1457
    invoke-virtual {v1}, Lcom/tencent/ads/data/AdItem;->getControlParams()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public getPlayedPosition()I
    .locals 1

    .line 1477
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    if-eqz v0, :cond_0

    .line 1478
    invoke-interface {v0}, Lcom/tencent/ads/view/AdListener;->reportPlayPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTickerInfo()Lcom/tencent/ads/data/AdTickerInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrlsForVids([Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1549
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/ads/v2/utils/GetUrlsForVidsRunnable;

    iget-object v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    iget-object v3, p0, Lcom/tencent/ads/v2/PlayerAdView;->mBaseMraidAdView:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;

    invoke-direct {v1, p1, v2, v3, p2}, Lcom/tencent/ads/v2/utils/GetUrlsForVidsRunnable;-><init>([Ljava/lang/String;Lcom/tencent/ads/view/AdRequest;Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public getUserKey()Ljava/lang/String;
    .locals 1

    .line 1587
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    if-eqz v0, :cond_0

    .line 1588
    invoke-virtual {v0}, Lcom/tencent/ads/view/AdRequest;->getRequestId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1590
    :goto_0
    invoke-static {v0}, Lcom/tencent/ads/utility/Utils;->getUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getVideoAdServieHandler()Lcom/tencent/ads/view/AdServiceHandler;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdServiceHandler:Lcom/tencent/ads/view/AdServiceHandler;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAppAdConfig:Lcom/tencent/ads/service/AppAdConfig;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AppAdConfig;->getAdServiceHandler()Lcom/tencent/ads/view/AdServiceHandler;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getVideoPlayedProgress()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected handleClickPing([Lcom/tencent/ads/data/ReportClickItem;)V
    .locals 0

    .line 838
    invoke-static {p1}, Lcom/tencent/ads/service/AdPing;->doClickPing([Lcom/tencent/ads/data/ReportClickItem;)V

    return-void
.end method

.method protected handleMonitorPing()V
    .locals 2

    .line 814
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v1, "handleMonitorPing"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    iget-boolean v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->hasMonitorPinged:Z

    if-nez v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    invoke-static {v0}, Lcom/tencent/ads/service/AdPing;->doMonitorPing(Lcom/tencent/ads/service/AdMonitor;)V

    const/4 v0, 0x1

    .line 817
    iput-boolean v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->hasMonitorPinged:Z

    :cond_0
    return-void
.end method

.method protected handlePing(Lcom/tencent/ads/view/AdRequest;IIZZ)V
    .locals 0

    .line 830
    invoke-static {p1, p2, p3, p4, p5}, Lcom/tencent/ads/service/AdPing;->handlePing(Lcom/tencent/ads/view/AdRequest;IIZZ)V

    return-void
.end method

.method public handlerAdResponse(Lcom/tencent/ads/service/AdResponse;)V
    .locals 0

    .line 278
    invoke-super {p0, p1}, Lcom/tencent/ads/view/AdViewBase;->handlerAdResponse(Lcom/tencent/ads/service/AdResponse;)V

    .line 279
    iput-object p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    return-void
.end method

.method protected handlerCanvasAdClick(Lcom/tencent/ads/data/AdItem;Ljava/lang/String;[Lcom/tencent/ads/data/ReportClickItem;)V
    .locals 3

    .line 1098
    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->createAdCanvasLandingPageIntent(Lcom/tencent/ads/data/AdItem;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1104
    :cond_0
    :try_start_0
    sget-object v1, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v2, "try to open canvas landing activity"

    invoke-static {v1, v2}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    iget-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1106
    invoke-static {p2}, Lcom/tencent/ads/service/AdPing;->pingUrl(Ljava/lang/String;)V

    if-nez p3, :cond_1

    .line 1107
    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getReportClickItems()[Lcom/tencent/ads/data/ReportClickItem;

    move-result-object p3

    :cond_1
    invoke-virtual {p0, p3}, Lcom/tencent/ads/v2/PlayerAdView;->handleClickPing([Lcom/tencent/ads/data/ReportClickItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1110
    :catchall_0
    sget-object p1, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string p2, "open canvas landing activity failed"

    invoke-static {p1, p2}, Lcom/tencent/adcore/utility/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected handlerDownloadAdClick(Lcom/tencent/ads/data/AdItem;Ljava/lang/String;Lcom/tencent/ads/service/AdResponse;I[Lcom/tencent/ads/data/ReportClickItem;)V
    .locals 2

    .line 1032
    iget-object p3, p0, Lcom/tencent/ads/v2/PlayerAdView;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    const/4 p4, 0x0

    if-nez p3, :cond_0

    .line 1033
    new-instance p3, Lcom/tencent/ads/v2/PlayerAdView$InstallReceiver;

    invoke-direct {p3, p0, p4}, Lcom/tencent/ads/v2/PlayerAdView$InstallReceiver;-><init>(Lcom/tencent/ads/v2/PlayerAdView;Lcom/tencent/ads/v2/PlayerAdView$1;)V

    iput-object p3, p0, Lcom/tencent/ads/v2/PlayerAdView;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    .line 1035
    :try_start_0
    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 1036
    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 1037
    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 1038
    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    .line 1039
    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1040
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p3, "registerInstallReceiver"

    .line 1041
    invoke-static {p3}, Lcom/tencent/adcore/utility/SLog;->v(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 1047
    :cond_0
    :goto_0
    iget-object p3, p0, Lcom/tencent/ads/v2/PlayerAdView;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    if-nez p3, :cond_1

    .line 1049
    :try_start_1
    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.tencent.qqlive.tad.download.taddownloadmanager"

    .line 1050
    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1051
    new-instance v0, Lcom/tencent/ads/v2/PlayerAdView$DownloadReceiver;

    invoke-direct {v0, p0, p4}, Lcom/tencent/ads/v2/PlayerAdView$DownloadReceiver;-><init>(Lcom/tencent/ads/v2/PlayerAdView;Lcom/tencent/ads/v2/PlayerAdView$1;)V

    iput-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    .line 1052
    iget-object p4, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p4, v0, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    nop

    .line 1058
    :cond_1
    :goto_1
    invoke-static {p2}, Lcom/tencent/ads/service/AdPing;->pingUrl(Ljava/lang/String;)V

    if-nez p5, :cond_2

    .line 1059
    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getReportClickItems()[Lcom/tencent/ads/data/ReportClickItem;

    move-result-object p5

    :cond_2
    invoke-virtual {p0, p5}, Lcom/tencent/ads/v2/PlayerAdView;->handleClickPing([Lcom/tencent/ads/data/ReportClickItem;)V

    .line 1061
    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getDownloadItem()Lcom/tencent/ads/data/DownloadItem;

    move-result-object p2

    if-nez p2, :cond_3

    return-void

    .line 1066
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getOid()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/tencent/ads/data/DownloadItem;->oid:Ljava/lang/String;

    .line 1067
    iget p3, p2, Lcom/tencent/ads/data/DownloadItem;->type:I

    const/4 p4, 0x1

    if-ne p3, p4, :cond_4

    .line 1070
    invoke-static {}, Lcom/tencent/ads/service/AppAdConfig;->getInstance()Lcom/tencent/ads/service/AppAdConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tencent/ads/service/AppAdConfig;->isForGoogle()Z

    move-result p3

    if-nez p3, :cond_7

    .line 1071
    new-instance p3, Lcom/tencent/ads/v2/PlayerAdView$3;

    invoke-direct {p3, p0, p1}, Lcom/tencent/ads/v2/PlayerAdView$3;-><init>(Lcom/tencent/ads/v2/PlayerAdView;Lcom/tencent/ads/data/AdItem;)V

    .line 1078
    iget-object p4, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    iget p5, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdType:I

    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getClickUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p2, p3, p5, p1}, Lcom/tencent/ads/utility/Utils;->doDownload(Landroid/content/Context;Lcom/tencent/ads/data/DownloadItem;Lcom/tencent/ads/service/AdDownloader$AdDownloadListener;ILjava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 p1, 0x2

    if-ne p3, p1, :cond_7

    .line 1081
    iget-object p3, p2, Lcom/tencent/ads/data/DownloadItem;->pname:Ljava/lang/String;

    .line 1082
    iget p4, p2, Lcom/tencent/ads/data/DownloadItem;->versionCode:I

    .line 1083
    iget-object p5, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    invoke-static {p5, p3, p4}, Lcom/tencent/ads/utility/Utils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 1084
    iget-object p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/tencent/ads/utility/Utils;->startApp(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 1085
    :cond_5
    iget p3, p2, Lcom/tencent/ads/data/DownloadItem;->state:I

    if-ne p3, p1, :cond_6

    .line 1086
    iget-object p1, p2, Lcom/tencent/ads/data/DownloadItem;->savaPath:Ljava/lang/String;

    iget-object p2, p2, Lcom/tencent/ads/data/DownloadItem;->appDownloadUrl:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tencent/ads/utility/Utils;->installApp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1088
    :cond_6
    invoke-static {p2}, Lcom/tencent/ads/utility/Utils;->downloadApp(Lcom/tencent/ads/data/DownloadItem;)V

    :cond_7
    :goto_2
    return-void
.end method

.method protected handlerOpenAppAdClick(Lcom/tencent/ads/data/AdItem;)Z
    .locals 5

    .line 1153
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v1, "handlerOpenAppAdClick"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1155
    :try_start_0
    iget-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/tencent/ads/data/AdItem;->openAppScheme:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/ads/data/AdItem;->openAppName:Ljava/lang/String;

    new-instance v4, Lcom/tencent/ads/v2/PlayerAdView$5;

    invoke-direct {v4, p0, p1}, Lcom/tencent/ads/v2/PlayerAdView$5;-><init>(Lcom/tencent/ads/v2/PlayerAdView;Lcom/tencent/ads/data/AdItem;)V

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/adcore/common/utils/OpenAppUtil;->openAppWithDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/adcore/common/utils/OpenAppUtil$OpenAppWithDialogListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->openAdDialog:Landroid/app/Dialog;

    .line 1170
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->onOpenAdDialogShow()V

    .line 1171
    iget-object p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->openAdDialog:Landroid/app/Dialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception p1

    .line 1174
    sget-object v1, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v2, "handlerOpenAppAdClick -> open failed"

    invoke-static {v1, v2, p1}, Lcom/tencent/adcore/utility/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method protected handlerWechatMiniProgramAdClick(Lcom/tencent/ads/data/AdItem;Ljava/lang/String;[Lcom/tencent/ads/data/ReportClickItem;)Z
    .locals 8

    .line 1116
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v1, "handlerWechatMiniProgramAdClick"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    :try_start_0
    invoke-static {}, Lcom/tencent/adcore/miniprogram/WechatMiniProgramManager;->getInstance()Lcom/tencent/adcore/miniprogram/WechatMiniProgramManager;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getMiniProgramUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getMiniProgramPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getMiniProgramEnv()I

    move-result v6

    new-instance v7, Lcom/tencent/ads/v2/PlayerAdView$4;

    invoke-direct {v7, p0, p1, p2, p3}, Lcom/tencent/ads/v2/PlayerAdView$4;-><init>(Lcom/tencent/ads/v2/PlayerAdView;Lcom/tencent/ads/data/AdItem;Ljava/lang/String;[Lcom/tencent/ads/data/ReportClickItem;)V

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/adcore/miniprogram/WechatMiniProgramManager;->openMiniProgramWithDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/adcore/miniprogram/WechatMiniProgramManager$OpenMiniProgramDialogListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->openAdDialog:Landroid/app/Dialog;

    .line 1145
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->onOpenAdDialogShow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1147
    sget-object p2, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string p3, "handlerWechatMiniProgramAdClick -> open failed"

    invoke-static {p2, p3, p1}, Lcom/tencent/adcore/utility/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasLandingView()Z
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdPage:Lcom/tencent/adcore/view/AdCorePage;

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0}, Lcom/tencent/adcore/view/AdCorePage;->hasLandingView()Z

    move-result v0

    return v0

    .line 396
    :cond_0
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v1, "hasLandingView false"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected hide()V
    .locals 2

    .line 615
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v1, "hide"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->uiHandler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public informAppStatus(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 411
    iput-boolean v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mIsAppBackground:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 413
    iput-boolean p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mIsAppBackground:Z

    goto :goto_0

    .line 415
    :cond_1
    sget-object p1, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v0, "informAppStatus called with invalid status code"

    invoke-static {p1, v0}, Lcom/tencent/adcore/utility/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public informPlayerStatus(I)V
    .locals 3

    .line 432
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "informPlayerStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/adcore/utility/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initAdPage(Lcom/tencent/ads/data/AdItem;)V
    .locals 8

    .line 1404
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v1, "initAdPage"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1406
    sget-object p1, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v0, "initAdPage failed: adItem is null"

    invoke-static {p1, v0}, Lcom/tencent/adcore/utility/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1409
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getOid()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1410
    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->useSafeInterface()Z

    move-result v5

    .line 1411
    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getShareInfo()Lcom/tencent/adcore/data/AdShareInfo;

    move-result-object p1

    .line 1412
    iget-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdPage:Lcom/tencent/adcore/view/AdCorePage;

    if-nez v1, :cond_1

    .line 1413
    new-instance v7, Lcom/tencent/adcore/view/AdCorePage;

    iget-object v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->getVideoAdServieHandler()Lcom/tencent/ads/view/AdServiceHandler;

    move-result-object v6

    move-object v1, v7

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/adcore/view/AdCorePage;-><init>(Landroid/content/Context;Lcom/tencent/adcore/view/AdCorePageListener;ZZLcom/tencent/adcore/view/AdCoreServiceHandler;)V

    iput-object v7, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdPage:Lcom/tencent/adcore/view/AdCorePage;

    .line 1415
    :cond_1
    iget-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdPage:Lcom/tencent/adcore/view/AdCorePage;

    iget-object v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    invoke-virtual {v2}, Lcom/tencent/ads/view/AdRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/adcore/view/AdCorePage;->setRequestId(Ljava/lang/String;)V

    .line 1416
    sget-object v1, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v2, "load LandingPage"

    invoke-static {v1, v2}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    iget-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdPage:Lcom/tencent/adcore/view/AdCorePage;

    invoke-virtual {v1, v0}, Lcom/tencent/adcore/view/AdCorePage;->setOid(Ljava/lang/String;)V

    .line 1418
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdPage:Lcom/tencent/adcore/view/AdCorePage;

    invoke-virtual {v0, p1}, Lcom/tencent/adcore/view/AdCorePage;->setShareInfo(Lcom/tencent/adcore/data/AdShareInfo;)V

    return-void
.end method

.method protected initCommonParams(Lcom/tencent/ads/view/AdRequest;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {p1, v0}, Lcom/tencent/ads/view/AdRequest;->setAdListener(Lcom/tencent/ads/view/AdListener;)V

    .line 292
    :cond_1
    iput-object p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    .line 293
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    invoke-virtual {v0}, Lcom/tencent/ads/view/AdRequest;->getAdMonitor()Lcom/tencent/ads/service/AdMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    .line 295
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdConfig:Lcom/tencent/ads/service/AdConfig;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdConfig;->update()V

    .line 296
    invoke-static {}, Lcom/tencent/ads/service/PingService;->getInstance()Lcom/tencent/ads/service/PingService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/ads/service/PingService;->start()V

    .line 298
    invoke-virtual {p1}, Lcom/tencent/ads/view/AdRequest;->getAdType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 300
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdMonitor;->init()V

    .line 303
    :cond_2
    invoke-static {}, Lcom/tencent/ads/service/AdStore;->getInstance()Lcom/tencent/ads/service/AdStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/ads/service/AdStore;->hasPreLoadAd(Lcom/tencent/ads/view/AdRequest;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 304
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdMonitor;->init()V

    .line 305
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    invoke-virtual {v0, v1}, Lcom/tencent/ads/service/AdMonitor;->setPreLoad(Z)V

    goto :goto_0

    .line 307
    :cond_3
    invoke-static {}, Lcom/tencent/ads/service/AdStore;->getInstance()Lcom/tencent/ads/service/AdStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/ads/service/AdStore;->getPreLoadAd(Lcom/tencent/ads/view/AdRequest;)Lcom/tencent/ads/data/LoadAdItem;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 308
    invoke-virtual {v0}, Lcom/tencent/ads/data/LoadAdItem;->getAdRequest()Lcom/tencent/ads/view/AdRequest;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 309
    invoke-virtual {v0}, Lcom/tencent/ads/data/LoadAdItem;->getAdRequest()Lcom/tencent/ads/view/AdRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/ads/view/AdRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/tencent/ads/view/AdRequest;->setRequestId(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0}, Lcom/tencent/ads/data/LoadAdItem;->getAdRequest()Lcom/tencent/ads/view/AdRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/ads/view/AdRequest;->getAdMonitor()Lcom/tencent/ads/service/AdMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    .line 312
    :cond_4
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tencent/ads/service/AdMonitor;->setPreLoad(Z)V

    .line 313
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    invoke-virtual {p1}, Lcom/tencent/ads/view/AdRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/ads/service/AdMonitor;->setRequestId(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/ads/service/AdMonitor;->setStartReqTime(J)V

    .line 317
    :goto_0
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    invoke-virtual {p1}, Lcom/tencent/ads/view/AdRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/ads/service/AdMonitor;->setRequestId(Ljava/lang/String;)V

    .line 318
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 319
    invoke-virtual {p1}, Lcom/tencent/ads/view/AdRequest;->getRequestInfoMap()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 320
    invoke-virtual {p1}, Lcom/tencent/ads/view/AdRequest;->getRequestInfoMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 322
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/ads/view/AdRequest;->getReportInfoMap()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 323
    invoke-virtual {p1}, Lcom/tencent/ads/view/AdRequest;->getReportInfoMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 325
    :cond_6
    iget-object v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    invoke-virtual {v2, v0}, Lcom/tencent/ads/service/AdMonitor;->setOtherInfo(Ljava/util/Map;)V

    .line 326
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    iget v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdType:I

    invoke-virtual {p1}, Lcom/tencent/ads/view/AdRequest;->isOfflineCPD()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/ads/service/AdMonitor;->setAdType(IZ)V

    .line 327
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    const-string v2, "tpid"

    invoke-virtual {p1, v2}, Lcom/tencent/ads/view/AdRequest;->getSingleRequestInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/ads/service/AdMonitor;->setTpid(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 329
    iput-object p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    .line 330
    iput-object p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdPage:Lcom/tencent/adcore/view/AdCorePage;

    .line 331
    iput-object p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    .line 332
    iput-boolean v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->hasMonitorPinged:Z

    .line 333
    iput-boolean v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->isAdLoadingFinished:Z

    return-void
.end method

.method protected initialize()V
    .locals 3

    .line 534
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tencent/ads/v2/PlayerAdView;->initGlobalParams(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 535
    iput-boolean v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mIsTVApp:Z

    .line 536
    iput-boolean v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mIsNewsApp:Z

    .line 537
    iput-boolean v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mIsVideoApp:Z

    .line 538
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView$8;->$SwitchMap$com$tencent$adcore$utility$AdCoreSetting$APP:[I

    invoke-static {}, Lcom/tencent/ads/utility/AdSetting;->getApp()Lcom/tencent/adcore/utility/AdCoreSetting$APP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/adcore/utility/AdCoreSetting$APP;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 546
    :cond_0
    iput-boolean v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mIsVideoApp:Z

    goto :goto_0

    .line 543
    :cond_1
    iput-boolean v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mIsNewsApp:Z

    goto :goto_0

    .line 540
    :cond_2
    iput-boolean v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mIsTVApp:Z

    .line 552
    :goto_0
    invoke-static {}, Lcom/tencent/ads/service/AppConfigController;->getInstance()Lcom/tencent/ads/service/AppConfigController;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAppConfigController:Lcom/tencent/ads/service/AppConfigController;

    .line 553
    invoke-static {}, Lcom/tencent/ads/service/AdConfig;->getInstance()Lcom/tencent/ads/service/AdConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdConfig:Lcom/tencent/ads/service/AdConfig;

    .line 554
    invoke-static {}, Lcom/tencent/ads/service/AppAdConfig;->getInstance()Lcom/tencent/ads/service/AppAdConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAppAdConfig:Lcom/tencent/ads/service/AppAdConfig;

    .line 557
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method protected isAdClicked(Lcom/tencent/ads/service/AdResponse;I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1391
    invoke-virtual {p1}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v1

    array-length v1, v1

    if-le v1, p2, :cond_0

    .line 1392
    invoke-virtual {p1}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->isClicked()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/tencent/ads/utility/Utils;->isEnableAdJump()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected isContinuePlay(Lcom/tencent/ads/view/AdRequest;)Z
    .locals 9

    .line 258
    invoke-static {}, Lcom/tencent/ads/service/AdPlayController;->getInstance()Lcom/tencent/ads/service/AdPlayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdPlayController;->isNoAdForCrash()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 261
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/ads/view/AdRequest;->getLive()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 262
    :goto_0
    invoke-static {}, Lcom/tencent/ads/service/AdPlayController;->getInstance()Lcom/tencent/ads/service/AdPlayController;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tencent/ads/view/AdRequest;->getVid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/tencent/ads/service/AdPlayController;->getLastPlayedInfo(Ljava/lang/String;)Lcom/tencent/ads/service/AdPlayController$AdPlayInfo;

    move-result-object p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    if-eqz v0, :cond_3

    .line 266
    invoke-static {}, Lcom/tencent/ads/service/AdConfig;->getInstance()Lcom/tencent/ads/service/AdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdConfig;->getLiveVidPlayInterval()I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/tencent/ads/service/AdConfig;->getInstance()Lcom/tencent/ads/service/AdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdConfig;->getVidPlayInterval()I

    move-result v0

    :goto_1
    int-to-long v3, v0

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/tencent/ads/service/AdPlayController$AdPlayInfo;->getLastPlayedDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 268
    sget-object p1, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isContinuePlay - diff: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", expDuration: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x3e8

    mul-long v3, v3, v7

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long p1, v5, v7

    if-lez p1, :cond_4

    cmp-long p1, v5, v3

    if-gez p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method protected isDownloadAd(Lcom/tencent/ads/data/AdItem;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 584
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->isDownload()Z

    move-result p1

    return p1
.end method

.method protected isDownloadAd(Lcom/tencent/ads/service/AdResponse;I)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 572
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p1}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->isDownloadAd(Lcom/tencent/ads/data/AdItem;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected isWechatMiniProgram(Lcom/tencent/ads/data/AdItem;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 598
    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->isOpenWechatMiniProgramEnable()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public loadAd(Lcom/tencent/ads/view/AdRequest;)V
    .locals 2

#    .line 199
#    :try_start_0
#    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->doLoadAd(Lcom/tencent/ads/view/AdRequest;)V
#    :try_end_0
#    .catchall {:try_start_0 .. :try_end_0} :catchall_0
#
#    goto :goto_0
#
#    :catchall_0
#    move-exception p1
#
#    .line 201
#    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;
#
#    const-string v1, "loadAd failed"
#
#    invoke-static {v0, v1, p1}, Lcom/tencent/adcore/utility/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
#
#    :goto_0
    return-void
.end method

.method public onCloseButtonClicked()V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 965
    iput-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    .line 966
    invoke-super {p0}, Lcom/tencent/ads/view/AdViewBase;->onDetachedFromWindow()V

    return-void
.end method

.method public onH5SkipAd()V
    .locals 0

    return-void
.end method

.method public onH5StageReady()V
    .locals 2

    .line 1600
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mBaseMraidAdView:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;

    if-eqz v0, :cond_0

    .line 1601
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->getCurrentAdItem()Lcom/tencent/ads/data/AdItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1603
    iget-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mBaseMraidAdView:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;

    invoke-virtual {v0}, Lcom/tencent/ads/data/AdItem;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v1, v0}, Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;->onVideoDurationChanged(I)V

    :cond_0
    return-void
.end method

.method public onLandingViewClosed()V
    .locals 1

    .line 1813
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    if-eqz v0, :cond_0

    .line 1814
    invoke-interface {v0}, Lcom/tencent/ads/view/AdListener;->onLandingViewClosed()V

    .line 1817
    :cond_0
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mBaseMraidAdView:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;

    if-eqz v0, :cond_1

    .line 1818
    invoke-virtual {v0}, Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;->onLandingPageClosed()V

    :cond_1
    return-void
.end method

.method public onLandingViewPresented()V
    .locals 1

    .line 1801
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    if-eqz v0, :cond_0

    .line 1802
    invoke-interface {v0}, Lcom/tencent/ads/view/AdListener;->onLandingViewPresented()V

    :cond_0
    return-void
.end method

.method public onLandingViewWillClose()V
    .locals 0

    return-void
.end method

.method public onLandingViewWillPresent()V
    .locals 0

    return-void
.end method

.method protected onOpenAdDialogClose()V
    .locals 0

    return-void
.end method

.method protected onOpenAdDialogShow()V
    .locals 0

    return-void
.end method

.method public onRichMediaPageLoaded()V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    .line 738
    iget-boolean v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mIsTVApp:Z

    if-eqz v0, :cond_0

    return-void

    .line 742
    :cond_0
    invoke-static {}, Lcom/tencent/ads/utility/AdSetting;->getApp()Lcom/tencent/adcore/utility/AdCoreSetting$APP;

    move-result-object v0

    sget-object v1, Lcom/tencent/adcore/utility/AdCoreSetting$APP;->VIDEO:Lcom/tencent/adcore/utility/AdCoreSetting$APP;

    if-ne v0, v1, :cond_1

    .line 743
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/ads/utility/OrientationDetector;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 746
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/tencent/ads/utility/OrientationDetector;->getScreenOrientation(Landroid/content/Context;IIII)I

    move-result v0

    .line 748
    :goto_0
    invoke-static {}, Lcom/tencent/ads/utility/SystemUtil;->isStandByPictureInPicture()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 749
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 750
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 751
    invoke-virtual {v1}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 752
    invoke-virtual {p0, v2}, Lcom/tencent/ads/v2/PlayerAdView;->setPicInPicState(I)V

    .line 753
    instance-of p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;

    if-eqz p1, :cond_2

    .line 754
    move-object p1, p0

    check-cast p1, Lcom/tencent/ads/v2/videoad/VideoAdView;

    const/16 p2, 0x8

    .line 755
    invoke-virtual {p1, p2}, Lcom/tencent/ads/v2/videoad/VideoAdView;->triggerMiniMode(I)V

    :cond_2
    return-void

    .line 758
    :cond_3
    iget v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mPicInPicState:I

    if-ne v1, v2, :cond_4

    const/4 p1, 0x0

    .line 759
    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->setPicInPicState(I)V

    return-void

    .line 764
    :cond_4
    sget-object v1, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSizeChanged orientation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", size w: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", h: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", oldw: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", oldh: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v2, :cond_5

    .line 767
    invoke-direct {p0}, Lcom/tencent/ads/v2/PlayerAdView;->handlePortrait()V

    goto :goto_1

    :cond_5
    const/4 p1, 0x2

    if-ne v0, p1, :cond_6

    .line 769
    invoke-direct {p0}, Lcom/tencent/ads/v2/PlayerAdView;->handleLandscape()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 386
    invoke-super {p0, p1}, Lcom/tencent/ads/view/AdViewBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public openCanvasAd(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected openHttpUrl(Ljava/lang/String;Lcom/tencent/ads/data/AdItem;)Z
    .locals 4

    .line 1251
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdConfig:Lcom/tencent/ads/service/AdConfig;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdConfig;->useLandingActivity()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1252
    invoke-virtual {p0, p1, p2}, Lcom/tencent/ads/v2/PlayerAdView;->createAdLandingPageIntent(Ljava/lang/String;Lcom/tencent/ads/data/AdItem;)Landroid/content/Intent;

    move-result-object v0

    .line 1254
    :try_start_0
    sget-object v2, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v3, "try to openLandingPage in independent activity"

    invoke-static {v2, v3}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    iget-object v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1256
    invoke-direct {p0}, Lcom/tencent/ads/v2/PlayerAdView;->registerLandingReceiver()V

    .line 1257
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v2, "openLandingPage in independent activity"

    invoke-static {v0, v2}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    .line 1260
    invoke-static {}, Lcom/tencent/adcore/utility/SLog;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/tencent/ads/utility/SystemUtil;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.ads"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "OpenLandingPageFailed, try to use single View"

    .line 1261
    invoke-static {v2, v0}, Lcom/tencent/ads/utility/Utils;->unignoreableException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1266
    :cond_0
    invoke-virtual {p0, p2}, Lcom/tencent/ads/v2/PlayerAdView;->initAdPage(Lcom/tencent/ads/data/AdItem;)V

    .line 1267
    sget-object p2, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v0, "load LandingPage"

    invoke-static {p2, v0}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    iget-object p2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdPage:Lcom/tencent/adcore/view/AdCorePage;

    invoke-virtual {p2}, Lcom/tencent/adcore/view/AdCorePage;->attachToCurrentActivity()V

    .line 1269
    iget-object p2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdPage:Lcom/tencent/adcore/view/AdCorePage;

    invoke-virtual {p2, p1}, Lcom/tencent/adcore/view/AdCorePage;->loadWebView(Ljava/lang/String;)V

    return v1
.end method

.method protected openLandingPage(Ljava/lang/String;ZLcom/tencent/ads/data/AdItem;[Lcom/tencent/ads/data/ReportClickItem;)V
    .locals 3

    .line 1188
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openLandingPage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1190
    sget-object p1, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string p2, "openLandingPage failed: mContext is null"

    invoke-static {p1, p2}, Lcom/tencent/adcore/utility/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 1194
    sget-object p1, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string p2, "openLandingPage failed: adItem is null"

    invoke-static {p1, p2}, Lcom/tencent/adcore/utility/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1197
    :cond_1
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    if-eqz v0, :cond_2

    .line 1198
    invoke-interface {v0}, Lcom/tencent/ads/view/AdListener;->onLandingViewWillPresent()V

    .line 1200
    :cond_2
    invoke-virtual {p0, p1, p3, p4}, Lcom/tencent/ads/v2/PlayerAdView;->openNativeUrl(Ljava/lang/String;Lcom/tencent/ads/data/AdItem;[Lcom/tencent/ads/data/ReportClickItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 1203
    :cond_3
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAppAdConfig:Lcom/tencent/ads/service/AppAdConfig;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AppAdConfig;->getOpenLandingPageWay()I

    move-result v0

    .line 1204
    invoke-virtual {p3}, Lcom/tencent/ads/data/AdItem;->getOpenUrlType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_5

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez p2, :cond_7

    .line 1206
    invoke-static {p1}, Lcom/tencent/ads/utility/Utils;->isIntercepted(Ljava/lang/String;)Z

    move-result p2

    xor-int/2addr p2, v2

    and-int/2addr v0, p2

    if-nez p4, :cond_6

    .line 1207
    invoke-virtual {p3}, Lcom/tencent/ads/data/AdItem;->getReportClickItems()[Lcom/tencent/ads/data/ReportClickItem;

    move-result-object p4

    :cond_6
    invoke-virtual {p0, p4}, Lcom/tencent/ads/v2/PlayerAdView;->handleClickPing([Lcom/tencent/ads/data/ReportClickItem;)V

    .line 1210
    :cond_7
    invoke-static {p1}, Lcom/tencent/ads/utility/Utils;->makeNativeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez v0, :cond_a

    if-eqz p2, :cond_8

    goto :goto_3

    .line 1219
    :cond_8
    iget-object p2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mBaseMraidAdView:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;

    if-eqz p2, :cond_9

    .line 1220
    sget-object p4, Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView$ActiveType;->LANDING_PAGE:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView$ActiveType;

    invoke-virtual {p2, p4}, Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;->onApplicationResignActive(Ljava/lang/Enum;)V

    .line 1223
    :cond_9
    invoke-virtual {p0, p1, p3}, Lcom/tencent/ads/v2/PlayerAdView;->openHttpUrl(Ljava/lang/String;Lcom/tencent/ads/data/AdItem;)Z

    :goto_2
    return-void

    :cond_a
    :goto_3
    if-eqz p2, :cond_b

    move-object p1, p2

    .line 1215
    :cond_b
    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->openUrlBySystem(Ljava/lang/String;)V

    return-void
.end method

.method protected openNativeUrl(Ljava/lang/String;Lcom/tencent/ads/data/AdItem;[Lcom/tencent/ads/data/ReportClickItem;)Z
    .locals 6

    .line 1228
    invoke-static {p2}, Lcom/tencent/adcore/common/utils/OpenAppUtil;->isOpenNativeUrl(Lcom/tencent/adcore/data/AdCoreItem;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1231
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    .line 1232
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1233
    invoke-virtual {p2}, Lcom/tencent/ads/data/AdItem;->getNativeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/ads/utility/Utils;->makeNativeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1234
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1235
    iget-object v3, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 1238
    sget-object v3, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doClick: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tencent/ads/data/AdItem;->getNativeUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/tencent/adcore/utility/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const-string v1, "openapp=0"

    .line 1241
    invoke-static {p1, v1}, Lcom/tencent/ads/utility/Utils;->addParamsAfterUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1242
    invoke-static {p1}, Lcom/tencent/ads/service/AdPing;->pingUrl(Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 1243
    invoke-virtual {p2}, Lcom/tencent/ads/data/AdItem;->getReportClickItems()[Lcom/tencent/ads/data/ReportClickItem;

    move-result-object p3

    :cond_0
    invoke-virtual {p0, p3}, Lcom/tencent/ads/v2/PlayerAdView;->handleClickPing([Lcom/tencent/ads/data/ReportClickItem;)V

    return v0

    :cond_1
    return v1
.end method

.method protected openUrlBySystem(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1280
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 1281
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1282
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1283
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1284
    iget-object p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "\u60a8\u8fd8\u6ca1\u5b89\u88c5\u6d4f\u89c8\u5668"

    .line 1286
    invoke-static {p1}, Lcom/tencent/ads/utility/Utils;->shortToast(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 1490
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v1, "mraid pause"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1491
    iput-boolean v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mIsPausing:Z

    .line 1492
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    if-eqz v0, :cond_0

    .line 1493
    invoke-interface {v0}, Lcom/tencent/ads/view/AdListener;->onPauseApplied()V

    :cond_0
    return-void
.end method

.method protected receiveDownloadStateChanged(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method protected receiveInstallStateChanged()V
    .locals 0

    return-void
.end method

.method protected receiveLandingPageQuality(Lcom/tencent/adcore/service/AdCoreQuality;)V
    .locals 2

    .line 1771
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    if-nez v0, :cond_0

    return-void

    .line 1774
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/ads/service/AdResponse;->getMediaItemStats()[Lcom/tencent/ads/service/AdMediaItemStat;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/ads/utility/Utils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1777
    :cond_1
    iget v0, p1, Lcom/tencent/adcore/service/AdCoreQuality;->index:I

    if-ltz v0, :cond_3

    iget v0, p1, Lcom/tencent/adcore/service/AdCoreQuality;->index:I

    iget-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v1}, Lcom/tencent/ads/service/AdResponse;->getMediaItemStats()[Lcom/tencent/ads/service/AdMediaItemStat;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_2

    goto :goto_0

    .line 1780
    :cond_2
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdResponse;->getMediaItemStats()[Lcom/tencent/ads/service/AdMediaItemStat;

    move-result-object v0

    iget v1, p1, Lcom/tencent/adcore/service/AdCoreQuality;->index:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/tencent/ads/service/AdMediaItemStat;->addItem(Lcom/tencent/adcore/service/AdCoreQuality;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected receiveNetworkStatusChange()V
    .locals 2

    .line 1760
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mBaseMraidAdView:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;

    if-eqz v0, :cond_0

    .line 1761
    iget-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/ads/utility/SystemUtil;->getMraidNetworkStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;->onNetworkStatusChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected receiveScreenOff()V
    .locals 2

    .line 1750
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mBaseMraidAdView:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;

    if-eqz v0, :cond_0

    .line 1751
    sget-object v1, Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView$ActiveType;->SCREEN_LIGTH:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView$ActiveType;

    invoke-virtual {v0, v1}, Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;->onApplicationResignActive(Ljava/lang/Enum;)V

    .line 1752
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mBaseMraidAdView:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;

    sget-object v1, Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView$ActiveType;->SCREEN_LOCK:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView$ActiveType;

    invoke-virtual {v0, v1}, Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;->onApplicationResignActive(Ljava/lang/Enum;)V

    :cond_0
    return-void
.end method

.method protected receiveScreenOn()V
    .locals 2

    .line 1732
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mBaseMraidAdView:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;

    if-eqz v0, :cond_0

    .line 1733
    sget-object v1, Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView$ActiveType;->SCREEN_LIGTH:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView$ActiveType;

    invoke-virtual {v0, v1}, Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;->onApplicationBecomeActive(Ljava/lang/Enum;)V

    :cond_0
    return-void
.end method

.method protected receiveUserPresent()V
    .locals 2

    .line 1741
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mBaseMraidAdView:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;

    if-eqz v0, :cond_0

    .line 1742
    sget-object v1, Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView$ActiveType;->SCREEN_LOCK:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView$ActiveType;

    invoke-virtual {v0, v1}, Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;->onApplicationBecomeActive(Ljava/lang/Enum;)V

    :cond_0
    return-void
.end method

.method protected refreshLayout(I)V
    .locals 4

    .line 793
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshLayout orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 798
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    .line 799
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->getHeight()I

    move-result v0

    .line 800
    sget-object v1, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parent height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", self height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p1, v0, :cond_1

    .line 804
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 806
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 807
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->requestLayout()V

    :cond_1
    return-void
.end method

.method protected remove()V
    .locals 2

    .line 451
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v1, "remove"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView$ViewState;->REMOVED:Lcom/tencent/ads/v2/PlayerAdView$ViewState;

    iput-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mViewState:Lcom/tencent/ads/v2/PlayerAdView$ViewState;

    .line 453
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->uiHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected removeAdView()V
    .locals 2

    .line 727
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v1, "removeAdView"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->removeAllViews()V

    .line 730
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeRichAd()V
    .locals 1

    .line 1532
    new-instance v0, Lcom/tencent/ads/v2/PlayerAdView$7;

    invoke-direct {v0, p0}, Lcom/tencent/ads/v2/PlayerAdView$7;-><init>(Lcom/tencent/ads/v2/PlayerAdView;)V

    invoke-virtual {p0, v0}, Lcom/tencent/ads/v2/PlayerAdView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected removeRichMediaView()V
    .locals 1

    .line 709
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->resume()V

    .line 710
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mBaseMraidAdView:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;

    if-eqz v0, :cond_0

    .line 711
    invoke-virtual {v0}, Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;->destroy()V

    const/4 v0, 0x0

    .line 712
    iput-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mBaseMraidAdView:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 1499
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v1, "mraid resume"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    iget-boolean v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mIsPausing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    if-eqz v0, :cond_0

    .line 1501
    invoke-interface {v0}, Lcom/tencent/ads/view/AdListener;->onResumeApplied()V

    :cond_0
    const/4 v0, 0x0

    .line 1503
    iput-boolean v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mIsPausing:Z

    return-void
.end method

.method public richMediaClickPing(Z)V
    .locals 1

    .line 1564
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->getCurrentAdItem()Lcom/tencent/ads/data/AdItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1566
    invoke-virtual {p0, v0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->doRichMediaClickPing(Lcom/tencent/ads/data/AdItem;Z)V

    :cond_0
    return-void
.end method

.method public richMediaViewPing()V
    .locals 7

    const/4 v0, 0x0

    .line 1556
    iput-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    const/4 v0, 0x1

    .line 1557
    iput-boolean v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->isRichMediaPinged:Z

    .line 1558
    iget-object v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/ads/v2/PlayerAdView;->handlePing(Lcom/tencent/ads/view/AdRequest;IIZZ)V

    return-void
.end method

.method protected runMessageOnUiThread(I)V
    .locals 3

    .line 162
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runMessageOnUiThread messageId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3f2

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3f3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x456

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 168
    :pswitch_0
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->removeAdView()V

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x8

    .line 175
    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x0

    .line 171
    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->setVisibility(I)V

    goto :goto_0

    .line 165
    :pswitch_3
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->showAdView()V

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->doDestroy()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 182
    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->refreshLayout(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    .line 185
    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->refreshLayout(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 191
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public seekVideo(I)V
    .locals 0

    return-void
.end method

.method public setAdListener(Lcom/tencent/ads/view/AdListener;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    return-void
.end method

.method public setAdServieHandler(Lcom/tencent/ads/view/AdServiceHandler;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdServiceHandler:Lcom/tencent/ads/view/AdServiceHandler;

    return-void
.end method

.method public setEnableClick(Z)V
    .locals 0

    .line 461
    iput-boolean p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mIsEnableClick:Z

    return-void
.end method

.method public setMiniView(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 369
    iput-boolean p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mIsMiniView:Z

    .line 370
    iget-object p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->uiHandler:Landroid/os/Handler;

    const/16 v0, 0x3ec

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 372
    iput-boolean p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mIsMiniView:Z

    .line 373
    iget-object p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->uiHandler:Landroid/os/Handler;

    const/16 v0, 0x3eb

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public setObjectViewable(IZ)V
    .locals 0

    return-void
.end method

.method protected setPicInPicState(I)V
    .locals 0

    .line 774
    iput p1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mPicInPicState:I

    return-void
.end method

.method public setRichmediaVideoPlaying(Z)V
    .locals 4

    .line 1620
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRichmediaVideoPlaying, isPlaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v2, "onCustomCommand"

    invoke-static {v0, v2, v1}, Lcom/tencent/ads/utility/FeatureUtils;->isSupportAdListener(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1622
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "IS_RICHMEDIA_VIDEO_PLAYING"

    invoke-interface {v0, v1, p1}, Lcom/tencent/ads/view/AdListener;->onCustomCommand(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected show()V
    .locals 2

    .line 607
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v1, "show"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->uiHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected showAdView()V
    .locals 2

    .line 720
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v1, "showAdView"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected showMraidAdView(Ljava/lang/String;ZLandroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 628
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/ads/v2/PlayerAdView;->showMraidAdView(Ljava/lang/String;ZLandroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V

    return-void
.end method

.method protected showMraidAdView(Ljava/lang/String;ZLandroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V
    .locals 9

    .line 641
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mScreenLockReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 642
    new-instance v0, Lcom/tencent/ads/v2/PlayerAdView$ScreenLockReceiver;

    invoke-direct {v0, p0, v1}, Lcom/tencent/ads/v2/PlayerAdView$ScreenLockReceiver;-><init>(Lcom/tencent/ads/v2/PlayerAdView;Lcom/tencent/ads/v2/PlayerAdView$1;)V

    iput-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mScreenLockReceiver:Landroid/content/BroadcastReceiver;

    .line 644
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_PRESENT"

    .line 645
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    .line 646
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 647
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 648
    iget-object v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/ads/v2/PlayerAdView;->mScreenLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 649
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v2, "registerScreenLockReceiver:"

    invoke-static {v0, v2}, Lcom/tencent/adcore/utility/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 654
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 655
    new-instance v0, Lcom/tencent/ads/v2/PlayerAdView$ConnectionChangeReceiver;

    invoke-direct {v0, p0, v1}, Lcom/tencent/ads/v2/PlayerAdView$ConnectionChangeReceiver;-><init>(Lcom/tencent/ads/v2/PlayerAdView;Lcom/tencent/ads/v2/PlayerAdView$1;)V

    iput-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 657
    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 658
    iget-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mConnectionChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 659
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    const-string v1, "registerConnectionChangeReceive:"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 665
    :catchall_1
    :cond_1
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "richMediaUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    new-instance v0, Lcom/tencent/ads/v2/PlayerAdView$2;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p4

    move v5, p2

    move v6, p5

    move-object v7, p1

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/tencent/ads/v2/PlayerAdView$2;-><init>(Lcom/tencent/ads/v2/PlayerAdView;Landroid/widget/FrameLayout;ZILjava/lang/String;Landroid/widget/FrameLayout;)V

    .line 705
    invoke-virtual {v0}, Lcom/tencent/ads/v2/PlayerAdView$2;->start()V

    return-void
.end method

.method protected showUI()V
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->uiHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 624
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView$ViewState;->OPENED:Lcom/tencent/ads/v2/PlayerAdView$ViewState;

    iput-object v0, p0, Lcom/tencent/ads/v2/PlayerAdView;->mViewState:Lcom/tencent/ads/v2/PlayerAdView$ViewState;

    return-void
.end method

.method public viewMore(Ljava/lang/String;)V
    .locals 3

    .line 1508
    sget-object v0, Lcom/tencent/ads/v2/PlayerAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraid viewMore:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "undefined"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1510
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/ads/v2/PlayerAdView;->getCurrentAdItem()Lcom/tencent/ads/data/AdItem;

    move-result-object p1

    .line 1511
    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->getAdClickUrl(Lcom/tencent/ads/data/AdItem;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 1513
    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getLcount()I

    move-result p1

    .line 1514
    iget-object v1, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-static {v1, p1}, Lcom/tencent/ads/service/AdPing;->getClickMap(Lcom/tencent/ads/service/AdResponse;I)Ljava/util/Map;

    move-result-object p1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/ads/v2/PlayerAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    invoke-virtual {v2}, Lcom/tencent/ads/view/AdRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/tencent/ads/network/InternetService;->createUrl(Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 1520
    :cond_2
    :goto_0
    invoke-static {}, Lcom/tencent/ads/utility/Utils;->isEnableAdJump()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1521
    new-instance v0, Lcom/tencent/ads/v2/PlayerAdView$6;

    invoke-direct {v0, p0, p1}, Lcom/tencent/ads/v2/PlayerAdView$6;-><init>(Lcom/tencent/ads/v2/PlayerAdView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/ads/v2/PlayerAdView;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

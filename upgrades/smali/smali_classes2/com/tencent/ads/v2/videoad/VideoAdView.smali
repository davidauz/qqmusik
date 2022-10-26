.class public Lcom/tencent/ads/v2/videoad/VideoAdView;
.super Lcom/tencent/ads/v2/PlayerAdView;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/ads/v2/ui/PlayerAdUIBase$VideoAdUIListener;
.implements Lcom/tencent/ads/v2/videoad/VideoAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/ads/v2/videoad/VideoAdView$VolumeReceiver;,
        Lcom/tencent/ads/v2/videoad/VideoAdView$CountDownRunnable;,
        Lcom/tencent/ads/v2/videoad/VideoAdView$GestureListener;
    }
.end annotation


# static fields
.field private static final AD_SELECTOR_DISABLE_TIP:Ljava/lang/String; = "\u672c\u5468\u4e0d\u9009"

.field private static final DETAIL_TEXT:Ljava/lang/String; = "\u8be6\u60c5\u70b9\u51fb"

.field private static final DOWNLOADING_TEXT:Ljava/lang/String; = "\u4e0b\u8f7d\u4e2d..."

.field private static final DOWNLOAD_APP_TEXT:Ljava/lang/String; = "\u4e0b\u8f7d\u5e94\u7528"

.field private static final INSTALL_APP_TEXT:Ljava/lang/String; = "\u5b89\u88c5\u5e94\u7528"

.field private static final OPEN_APP_TEXT:Ljava/lang/String; = "\u6253\u5f00APP"

.field private static final START_APP_TEXT:Ljava/lang/String; = "\u542f\u52a8\u5e94\u7528"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected adDsrView:Lcom/tencent/ads/v2/ui/view/AdDsrView;

.field protected appSkipCause:Lcom/tencent/ads/v2/videoad/VideoAd$SkipCause;

.field protected cDetailShowTime:I

.field protected cIsFullScreen:Z

.field protected cIsOpenCache:Z

.field protected cIsOpenSkip:Z

.field protected cIsShowDetailButton:Z

.field protected cIsTestUser:Z

.field private currentVisibility:I

.field private delaySetPlayerMuteRunable:Ljava/lang/Runnable;

.field private detailShowed:Z

.field protected isAdLoadSuc:Z

.field private isForeground:Z

.field private isInitReceive:Z

.field protected isPlayed:Z

.field private isRichmediaVideoPlaying:Z

.field private isVolumeChanged:Z

.field private lastChangeHeadsetTime:J

.field private lastChangeVolumeTime:J

.field private lastH5MuteTime:J

.field private mAdLoadingService:Lcom/tencent/ads/view/AdServiceHandler$LoadingService;

.field private mAdLoadingView:Landroid/view/View;

.field protected mAdPlayedDuration:I

.field protected mAdTotalDuration:I

.field private mCountDownRunnable:Lcom/tencent/ads/v2/utils/BaseTimerRunnable;

.field private mCountDownThread:Ljava/lang/Thread;

.field protected mCurrentAdItem:Lcom/tencent/ads/data/AdItem;

.field protected mCurrentAdItemIndex:I

.field private mCurrentPlayerFullScreen:Z

.field private mCurrentVolumeRate:F

.field private mDisableDetail:Z

.field private mDownVolume:F

.field protected mEmptyAdList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/ads/data/AdItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mFirstAdItem:Lcom/tencent/ads/data/AdItem;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/tencent/ads/v2/videoad/VideoAdView$GestureListener;

.field protected mInstantMonitor:Lcom/tencent/ads/service/InstantAdMonitor;

.field private mIsCurAdTrueView:Z

.field private mIsMoving:Z

.field private mIsMute:Z

.field protected mLastAdItemIndex:I

.field private mLastClickTime:J

.field protected mLastCountdown:I

.field protected mLastPlayPosition:I

.field private mLastUnmuteVolume:F

.field private mLastVolumeRate:F

.field private mMaxSystemVolume:I

.field private mNeedLoadingAnim:Z

.field protected mSkippTime:I

.field protected mSkipped:Z

.field private mVolumeReceiver:Landroid/content/BroadcastReceiver;

.field private thresholdOfResumeAdVolume:F

.field protected videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

.field private volumeMuteTobeRecover:Z

.field private volumeRateToBeResume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const-class v0, Lcom/tencent/ads/v2/videoad/VideoAdView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 172
    invoke-direct {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 115
    iput p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentVolumeRate:F

    .line 116
    iput p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->volumeRateToBeResume:F

    const/4 p1, -0x1

    .line 120
    iput p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mMaxSystemVolume:I

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isVolumeChanged:Z

    .line 124
    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsMute:Z

    const v1, 0x3d4ccccd    # 0.05f

    .line 125
    iput v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->thresholdOfResumeAdVolume:F

    .line 143
    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsMoving:Z

    .line 153
    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mNeedLoadingAnim:Z

    const/4 v1, 0x1

    .line 161
    iput-boolean v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isInitReceive:Z

    .line 162
    iput-boolean v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isForeground:Z

    .line 164
    iput p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->currentVisibility:I

    .line 165
    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isRichmediaVideoPlaying:Z

    .line 166
    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->volumeMuteTobeRecover:Z

    .line 1625
    new-instance p1, Lcom/tencent/ads/v2/videoad/VideoAdView$7;

    invoke-direct {p1, p0}, Lcom/tencent/ads/v2/videoad/VideoAdView$7;-><init>(Lcom/tencent/ads/v2/videoad/VideoAdView;)V

    iput-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->delaySetPlayerMuteRunable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/ads/v2/videoad/VideoAdView;)Lcom/tencent/ads/service/AdResponse;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/ads/v2/videoad/VideoAdView;)Lcom/tencent/ads/service/AdResponse;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/tencent/ads/v2/videoad/VideoAdView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mNeedLoadingAnim:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/tencent/ads/v2/videoad/VideoAdView;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mNeedLoadingAnim:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/tencent/ads/v2/videoad/VideoAdView;)Landroid/os/Handler;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->uiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/tencent/ads/v2/videoad/VideoAdView;Ljava/lang/String;ZLandroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V
    .locals 0

    .line 79
    invoke-virtual/range {p0 .. p5}, Lcom/tencent/ads/v2/videoad/VideoAdView;->showMraidAdView(Ljava/lang/String;ZLandroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/tencent/ads/v2/videoad/VideoAdView;)Landroid/os/Handler;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->uiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/tencent/ads/v2/videoad/VideoAdView;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->skipCurRichMedia()V

    return-void
.end method

.method static synthetic access$1500(Lcom/tencent/ads/v2/videoad/VideoAdView;Ljava/lang/String;ZLandroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V
    .locals 0

    .line 79
    invoke-virtual/range {p0 .. p5}, Lcom/tencent/ads/v2/videoad/VideoAdView;->showMraidAdView(Ljava/lang/String;ZLandroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/tencent/ads/v2/videoad/VideoAdView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsEnableClick:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/tencent/ads/v2/videoad/VideoAdView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsMoving:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/tencent/ads/v2/videoad/VideoAdView;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsMoving:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/tencent/ads/v2/videoad/VideoAdView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->volumeMuteTobeRecover:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/tencent/ads/v2/videoad/VideoAdView;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->volumeMuteTobeRecover:Z

    return p1
.end method

.method static synthetic access$200(Lcom/tencent/ads/v2/videoad/VideoAdView;)Lcom/tencent/ads/service/AdResponse;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/tencent/ads/v2/videoad/VideoAdView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsMute:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/tencent/ads/v2/videoad/VideoAdView;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsMute:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/tencent/ads/v2/videoad/VideoAdView;Z)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setPlayerMute(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/tencent/ads/v2/videoad/VideoAdView;)Landroid/content/Context;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/tencent/ads/v2/videoad/VideoAdView;)Landroid/content/Context;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/tencent/ads/v2/videoad/VideoAdView;)Landroid/content/Context;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/tencent/ads/v2/videoad/VideoAdView;)F
    .locals 0

    .line 79
    iget p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentVolumeRate:F

    return p0
.end method

.method static synthetic access$2600(Lcom/tencent/ads/v2/videoad/VideoAdView;F)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setAdVolume(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/ads/v2/videoad/VideoAdView;)Lcom/tencent/ads/service/AdMonitor;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/tencent/ads/v2/videoad/VideoAdView;)Lcom/tencent/ads/service/AdResponse;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/tencent/ads/v2/videoad/VideoAdView;)Lcom/tencent/ads/service/AdResponse;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/tencent/ads/v2/videoad/VideoAdView;)Lcom/tencent/ads/service/AdResponse;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/tencent/ads/v2/videoad/VideoAdView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isAdPrepared:Z

    return p0
.end method

.method static synthetic access$3400(Lcom/tencent/ads/v2/videoad/VideoAdView;)Lcom/tencent/ads/view/AdListener;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/tencent/ads/v2/videoad/VideoAdView;)Lcom/tencent/ads/service/AdResponse;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/tencent/ads/v2/videoad/VideoAdView;)Lcom/tencent/ads/view/AdListener;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/tencent/ads/v2/videoad/VideoAdView;I)Z
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->isValidPosition(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Lcom/tencent/ads/v2/videoad/VideoAdView;)Landroid/os/Handler;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->uiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/tencent/ads/v2/videoad/VideoAdView;)Landroid/os/Handler;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->uiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tencent/ads/v2/videoad/VideoAdView;)Lcom/tencent/ads/service/AdMonitor;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/tencent/ads/v2/videoad/VideoAdView;)Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mBaseMraidAdView:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/tencent/ads/v2/videoad/VideoAdView;)Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mBaseMraidAdView:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;

    return-object p0
.end method

.method static synthetic access$4202(Lcom/tencent/ads/v2/videoad/VideoAdView;Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;)Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mBaseMraidAdView:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/tencent/ads/v2/videoad/VideoAdView;)Lcom/tencent/ads/service/AdResponse;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/tencent/ads/v2/videoad/VideoAdView;)Landroid/os/Handler;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->uiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/tencent/ads/v2/videoad/VideoAdView;)Lcom/tencent/ads/service/AdResponse;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/tencent/ads/v2/videoad/VideoAdView;)Lcom/tencent/ads/service/AdMonitor;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/tencent/ads/v2/videoad/VideoAdView;)Lcom/tencent/ads/view/AdRequest;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/tencent/ads/v2/videoad/VideoAdView;Lcom/tencent/ads/view/AdRequest;IIZZ)V
    .locals 0

    .line 79
    invoke-virtual/range {p0 .. p5}, Lcom/tencent/ads/v2/videoad/VideoAdView;->handlePing(Lcom/tencent/ads/view/AdRequest;IIZZ)V

    return-void
.end method

.method static synthetic access$4900(Lcom/tencent/ads/v2/videoad/VideoAdView;)Lcom/tencent/ads/service/AdResponse;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tencent/ads/v2/videoad/VideoAdView;)Lcom/tencent/ads/service/AdMonitor;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/tencent/ads/v2/videoad/VideoAdView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isAdPrepared:Z

    return p0
.end method

.method static synthetic access$5100(Lcom/tencent/ads/v2/videoad/VideoAdView;)Lcom/tencent/ads/view/AdListener;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/tencent/ads/v2/videoad/VideoAdView;)Lcom/tencent/ads/service/AdResponse;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/tencent/ads/v2/videoad/VideoAdView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isForeground:Z

    return p0
.end method

.method static synthetic access$5302(Lcom/tencent/ads/v2/videoad/VideoAdView;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isForeground:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/tencent/ads/v2/videoad/VideoAdView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isInitReceive:Z

    return p0
.end method

.method static synthetic access$5402(Lcom/tencent/ads/v2/videoad/VideoAdView;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isInitReceive:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/tencent/ads/v2/videoad/VideoAdView;)F
    .locals 0

    .line 79
    iget p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mLastVolumeRate:F

    return p0
.end method

.method static synthetic access$5600(Lcom/tencent/ads/v2/videoad/VideoAdView;)J
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->lastChangeHeadsetTime:J

    return-wide v0
.end method

.method static synthetic access$5602(Lcom/tencent/ads/v2/videoad/VideoAdView;J)J
    .locals 0

    .line 79
    iput-wide p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->lastChangeHeadsetTime:J

    return-wide p1
.end method

.method static synthetic access$5700(Lcom/tencent/ads/v2/videoad/VideoAdView;)J
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->lastH5MuteTime:J

    return-wide v0
.end method

.method static synthetic access$5800(Lcom/tencent/ads/v2/videoad/VideoAdView;)I
    .locals 0

    .line 79
    iget p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mMaxSystemVolume:I

    return p0
.end method

.method static synthetic access$5902(Lcom/tencent/ads/v2/videoad/VideoAdView;F)F
    .locals 0

    .line 79
    iput p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mLastUnmuteVolume:F

    return p1
.end method

.method static synthetic access$600(Lcom/tencent/ads/v2/videoad/VideoAdView;)Lcom/tencent/ads/service/AdMonitor;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/tencent/ads/v2/videoad/VideoAdView;)Lcom/tencent/ads/v2/PlayerAdView$ViewState;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mViewState:Lcom/tencent/ads/v2/PlayerAdView$ViewState;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/tencent/ads/v2/videoad/VideoAdView;Z)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setMutedStatus(Z)V

    return-void
.end method

.method static synthetic access$6202(Lcom/tencent/ads/v2/videoad/VideoAdView;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isVolumeChanged:Z

    return p1
.end method

.method static synthetic access$700(Lcom/tencent/ads/v2/videoad/VideoAdView;)Lcom/tencent/ads/view/AdServiceHandler;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getVideoAdServieHandler()Lcom/tencent/ads/view/AdServiceHandler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/tencent/ads/v2/videoad/VideoAdView;)Landroid/view/ViewGroup;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAnchor:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 79
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addNormalAd()V
    .locals 4

    .line 1436
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "addNormalAd"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1437
    invoke-virtual {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->checkCountDownValue(I)I

    move-result v1

    .line 1438
    iget v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mLastCountdown:I

    if-lez v2, :cond_0

    const v3, 0x7fffffff

    if-ge v2, v3, :cond_0

    move v1, v2

    .line 1442
    :cond_0
    iget-object v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    if-eqz v2, :cond_1

    .line 1443
    invoke-virtual {v2, v1}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->updateCountDownValue(I)V

    .line 1444
    :cond_1
    invoke-direct {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->startCountDownThread()V

    .line 1446
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    .line 1449
    invoke-virtual {p0, v2}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setFocusable(Z)V

    .line 1450
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->requestFocus()Z

    .line 1451
    iget-object v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAnchor:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 1452
    iget-object v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAnchor:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1454
    :cond_2
    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->adDsrView:Lcom/tencent/ads/v2/ui/view/AdDsrView;

    if-eqz v1, :cond_3

    .line 1455
    invoke-virtual {v1}, Lcom/tencent/ads/v2/ui/view/AdDsrView;->active()V

    .line 1457
    :cond_3
    new-instance v1, Lcom/tencent/ads/v2/videoad/VideoAdView$5;

    invoke-direct {v1, p0}, Lcom/tencent/ads/v2/videoad/VideoAdView$5;-><init>(Lcom/tencent/ads/v2/videoad/VideoAdView;)V

    invoke-virtual {p0, v1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1470
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->isFullScreenClickableAd()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setClickable(Z)V

    .line 1473
    iget-boolean v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsTVApp:Z

    if-nez v1, :cond_4

    .line 1474
    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_4

    .line 1475
    new-instance v1, Lcom/tencent/ads/v2/videoad/VideoAdView$VolumeReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tencent/ads/v2/videoad/VideoAdView$VolumeReceiver;-><init>(Lcom/tencent/ads/v2/videoad/VideoAdView;Lcom/tencent/ads/v2/videoad/VideoAdView$1;)V

    iput-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    .line 1477
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    .line 1478
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.HEADSET_PLUG"

    .line 1479
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    .line 1480
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "app_on_switch_background"

    .line 1481
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "app_on_switch_foreground"

    .line 1482
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1483
    iget-object v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1484
    sget-object v1, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v2, "registerVolumeReceiver:"

    invoke-static {v1, v2}, Lcom/tencent/adcore/utility/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 1490
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    invoke-virtual {v1}, Lcom/tencent/ads/view/AdRequest;->getAppPlayStrategy()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HOT_SPOT_LIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    .line 1491
    invoke-virtual {v1}, Lcom/tencent/ads/view/AdRequest;->getAppPlayStrategy()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HOT_SPOT_NORMAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    const-string v2, "style"

    .line 1492
    invoke-virtual {v1, v2}, Lcom/tencent/ads/view/AdRequest;->getSingleRequestInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1493
    :cond_5
    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    if-eqz v1, :cond_6

    .line 1494
    invoke-virtual {v1, v0}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->showReturn(Z)V

    :cond_6
    return-void
.end method

.method private changeSystemVolume(I)V
    .locals 3

    .line 1907
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_1

    .line 1910
    iget-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsMute:Z

    if-eqz v0, :cond_1

    xor-int/lit8 v0, v0, 0x1

    .line 1911
    invoke-direct {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setPlayerMute(Z)V

    .line 1913
    :cond_1
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 1916
    :try_start_0
    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1918
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/adcore/utility/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private changeSystemVolumeRate(F)V
    .locals 3

    .line 1894
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 1897
    :cond_0
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1898
    iget v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mMaxSystemVolume:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    .line 1899
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mMaxSystemVolume:I

    .line 1901
    :cond_1
    iget v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mMaxSystemVolume:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    .line 1902
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeSystemVolume, maxSystemVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mMaxSystemVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", volumeToBeChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    invoke-direct {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->changeSystemVolume(I)V

    return-void
.end method

.method private checkAdAmount([Lcom/tencent/ads/data/AdItem;)[Lcom/tencent/ads/data/AdItem;
    .locals 4

    .line 777
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAppAdConfig:Lcom/tencent/ads/service/AppAdConfig;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AppAdConfig;->getMaxAdAmount()I

    move-result v0

    .line 778
    sget-object v1, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MaxAdAmount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x63

    if-ne v0, v1, :cond_0

    return-object p1

    .line 785
    :cond_0
    array-length v1, p1

    if-le v1, v0, :cond_1

    if-ltz v0, :cond_1

    .line 786
    new-array v1, v0, [Lcom/tencent/ads/data/AdItem;

    const/4 v2, 0x0

    .line 787
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    return-object p1
.end method

.method private checkDownloadAd()V
    .locals 3

    .line 1069
    invoke-direct {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->isDownloadAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v0

    iget v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/tencent/ads/data/AdItem;->getDownloadItem()Lcom/tencent/ads/data/DownloadItem;

    move-result-object v0

    .line 1071
    iget v1, v0, Lcom/tencent/ads/data/DownloadItem;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1072
    invoke-direct {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->downloadAppLogo(Lcom/tencent/ads/data/DownloadItem;)V

    :cond_0
    return-void
.end method

.method private checkLastFramePing(I)V
    .locals 8

    .line 1296
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    if-eqz v0, :cond_0

    .line 1297
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkLastFramePing index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    invoke-interface {v0}, Lcom/tencent/ads/view/AdListener;->reportPlayPosition()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getPrevAdDuration(I)I

    move-result v1

    sub-int v5, v0, v1

    .line 1299
    iget-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mSkipped:Z

    xor-int/lit8 v7, v0, 0x1

    .line 1300
    iget-object v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/ads/v2/videoad/VideoAdView;->handlePing(Lcom/tencent/ads/view/AdRequest;IIZZ)V

    :cond_0
    return-void
.end method

.method private checkTrueView([Lcom/tencent/ads/data/AdItem;)Z
    .locals 3

    .line 681
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    invoke-static {v0, v1}, Lcom/tencent/ads/utility/Utils;->isVip(Lcom/tencent/ads/service/AdResponse;Lcom/tencent/ads/view/AdRequest;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdConfig:Lcom/tencent/ads/service/AdConfig;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdConfig;->isTrueViewAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 690
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsTVApp:Z

    if-eqz v0, :cond_2

    return v1

    .line 695
    :cond_2
    array-length v0, p1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    return v1

    .line 699
    :cond_3
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lcom/tencent/ads/data/AdItem;->isTrueview()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 703
    :cond_4
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    return v2
.end method

.method private doSkipAd(Lcom/tencent/ads/v2/videoad/VideoAd$SkipCause;)V
    .locals 3

    .line 427
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "informAdSkipped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/ads/v2/videoad/VideoAd$SkipCause;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iput-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->appSkipCause:Lcom/tencent/ads/v2/videoad/VideoAd$SkipCause;

    .line 431
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAd$SkipCause;->PLAY_FAILED:Lcom/tencent/ads/v2/videoad/VideoAd$SkipCause;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 432
    new-instance p1, Lcom/tencent/ads/view/ErrorCode;

    const/16 v0, 0xcc

    const-string v2, "player played ad failed."

    invoke-direct {p1, v0, v2}, Lcom/tencent/ads/view/ErrorCode;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    .line 434
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {p1}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {p1}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_5

    .line 435
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {p1}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object p1

    array-length p1, p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {p1}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getAdVideoItem()Lcom/tencent/ads/data/AdVideoItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    .line 436
    invoke-virtual {p1}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getAdVideoItem()Lcom/tencent/ads/data/AdVideoItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/ads/data/AdVideoItem;->isStreaming()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 438
    iget p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    iget-object v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v2}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/tencent/ads/data/AdItem;->getAdVideoItem()Lcom/tencent/ads/data/AdVideoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/ads/data/AdVideoItem;->getUrlList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_5

    .line 439
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    iget-object v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v2}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/tencent/ads/data/AdItem;->getAdVideoItem()Lcom/tencent/ads/data/AdVideoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/ads/data/AdVideoItem;->getUrlList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/ads/service/AdMonitor;->setUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 443
    :cond_1
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {p1}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object p1

    iget v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getAdVideoItem()Lcom/tencent/ads/data/AdVideoItem;

    move-result-object p1

    .line 444
    invoke-virtual {p1}, Lcom/tencent/ads/data/AdVideoItem;->getUrlList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 445
    iget-object v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    invoke-virtual {p1}, Lcom/tencent/ads/data/AdVideoItem;->getUrlList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/tencent/ads/service/AdMonitor;->setUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 450
    :cond_2
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAd$SkipCause;->PLAY_STUCK:Lcom/tencent/ads/v2/videoad/VideoAd$SkipCause;

    if-ne p1, v0, :cond_3

    .line 451
    new-instance p1, Lcom/tencent/ads/view/ErrorCode;

    const/16 v0, 0xcf

    const-string v2, "AD is closed by partner."

    invoke-direct {p1, v0, v2}, Lcom/tencent/ads/view/ErrorCode;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    goto :goto_1

    .line 452
    :cond_3
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAd$SkipCause;->REQUEST_TIMEOUT:Lcom/tencent/ads/v2/videoad/VideoAd$SkipCause;

    if-ne p1, v0, :cond_4

    .line 453
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->cancelRequestAd()V

    .line 454
    new-instance p1, Lcom/tencent/ads/view/ErrorCode;

    const/16 v0, 0x12c

    const-string v2, "ad request is canceled by app."

    invoke-direct {p1, v0, v2}, Lcom/tencent/ads/view/ErrorCode;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    goto :goto_1

    .line 455
    :cond_4
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAd$SkipCause;->USER_RETURN:Lcom/tencent/ads/v2/videoad/VideoAd$SkipCause;

    if-ne p1, v0, :cond_5

    .line 456
    iget-boolean p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isAdLoadingFinished:Z

    if-nez p1, :cond_5

    .line 457
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->cancelRequestAd()V

    .line 458
    new-instance p1, Lcom/tencent/ads/view/ErrorCode;

    const/16 v0, 0xd0

    const-string v2, "AD request is closed by user."

    invoke-direct {p1, v0, v2}, Lcom/tencent/ads/view/ErrorCode;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    .line 462
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    if-eqz p1, :cond_6

    .line 463
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    invoke-virtual {p1, v1}, Lcom/tencent/ads/service/AdMonitor;->setIsskip(Z)V

    .line 466
    :cond_6
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->stopAd()V

    return-void
.end method

.method private downloadAppLogo(Lcom/tencent/ads/data/DownloadItem;)V
    .locals 4

    .line 1092
    iget-object v0, p1, Lcom/tencent/ads/data/DownloadItem;->appLogoUrl:Ljava/lang/String;

    .line 1093
    sget-object v1, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadAppLogo url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1098
    :cond_0
    new-instance v1, Lcom/tencent/ads/service/ImageLoad;

    invoke-direct {v1, v0}, Lcom/tencent/ads/service/ImageLoad;-><init>(Ljava/lang/String;)V

    .line 1099
    new-instance v0, Lcom/tencent/ads/v2/videoad/VideoAdView$3;

    invoke-direct {v0, p0, v1, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView$3;-><init>(Lcom/tencent/ads/v2/videoad/VideoAdView;Lcom/tencent/ads/service/ImageLoad;Lcom/tencent/ads/data/DownloadItem;)V

    invoke-virtual {v1, v0}, Lcom/tencent/ads/service/ImageLoad;->setLoadListener(Lcom/tencent/ads/service/ImageLoad$LoadListener;)V

    .line 1113
    invoke-virtual {p0, v1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->loadImage(Lcom/tencent/ads/service/ImageLoad;)V

    return-void
.end method

.method private downloadRichMediaFodder([Lcom/tencent/ads/data/AdItem;)V
    .locals 7

    .line 838
    invoke-static {p1}, Lcom/tencent/ads/utility/Utils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 842
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 843
    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    .line 844
    invoke-virtual {v1}, Lcom/tencent/ads/data/AdItem;->getOid()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lcom/tencent/ads/data/AdItem;->getRichMediaZip()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 847
    :cond_1
    invoke-virtual {v1}, Lcom/tencent/ads/data/AdItem;->getRichMediaZip()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/ads/utility/RichMediaCache;->isInCache(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 848
    invoke-static {}, Lcom/tencent/ads/service/RichMediaLoadService;->get()Lcom/tencent/ads/service/RichMediaLoadService;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/ads/data/AdItem;->getRichMediaZip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/ads/service/RichMediaLoadService;->loadRichMedia(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private getAdShowTime(I)J
    .locals 2

    .line 1215
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1218
    :cond_0
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    invoke-interface {v0}, Lcom/tencent/ads/view/AdListener;->reportPlayPosition()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getPrevAdDuration(I)I

    move-result p1

    sub-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method private getAppInstallState([Lcom/tencent/ads/data/AdItem;)V
    .locals 9

    .line 795
    invoke-static {p1}, Lcom/tencent/ads/utility/Utils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 800
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    aget-object v3, p1, v2

    if-eqz v3, :cond_6

    .line 801
    invoke-virtual {v3}, Lcom/tencent/ads/data/AdItem;->isDownload()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 804
    :cond_1
    invoke-virtual {v3}, Lcom/tencent/ads/data/AdItem;->getDownloadItem()Lcom/tencent/ads/data/DownloadItem;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 805
    iget-object v5, v4, Lcom/tencent/ads/data/DownloadItem;->pname:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 808
    :cond_2
    iget-object v5, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mContext:Landroid/content/Context;

    iget-object v6, v4, Lcom/tencent/ads/data/DownloadItem;->pname:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/tencent/ads/utility/Utils;->getAppVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    const-string v5, "1"

    goto :goto_1

    .line 811
    :cond_3
    iget v6, v4, Lcom/tencent/ads/data/DownloadItem;->versionCode:I

    if-lt v5, v6, :cond_4

    const-string v5, "-1"

    goto :goto_1

    :cond_4
    const-string v5, "0"

    :goto_1
    if-nez v0, :cond_5

    .line 817
    new-instance v0, Lcom/tencent/ads/service/AdMonitor$ApkState;

    invoke-direct {v0}, Lcom/tencent/ads/service/AdMonitor$ApkState;-><init>()V

    .line 818
    invoke-virtual {v3}, Lcom/tencent/ads/data/AdItem;->getOid()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/ads/service/AdMonitor$ApkState;->oid:Ljava/lang/String;

    .line 819
    iget-object v3, v4, Lcom/tencent/ads/data/DownloadItem;->pname:Ljava/lang/String;

    iput-object v3, v0, Lcom/tencent/ads/service/AdMonitor$ApkState;->pkg:Ljava/lang/String;

    .line 820
    iput-object v5, v0, Lcom/tencent/ads/service/AdMonitor$ApkState;->state:Ljava/lang/String;

    .line 821
    iget v3, v4, Lcom/tencent/ads/data/DownloadItem;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/ads/service/AdMonitor$ApkState;->version:Ljava/lang/String;

    goto :goto_2

    .line 823
    :cond_5
    new-instance v6, Lcom/tencent/ads/service/AdMonitor$ApkState;

    invoke-direct {v6}, Lcom/tencent/ads/service/AdMonitor$ApkState;-><init>()V

    .line 824
    invoke-virtual {v3}, Lcom/tencent/ads/data/AdItem;->getOid()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/tencent/ads/service/AdMonitor$ApkState;->oid:Ljava/lang/String;

    .line 825
    iget-object v3, v4, Lcom/tencent/ads/data/DownloadItem;->pname:Ljava/lang/String;

    iput-object v3, v6, Lcom/tencent/ads/service/AdMonitor$ApkState;->pkg:Ljava/lang/String;

    .line 826
    iput-object v5, v6, Lcom/tencent/ads/service/AdMonitor$ApkState;->state:Ljava/lang/String;

    .line 827
    iget v3, v4, Lcom/tencent/ads/data/DownloadItem;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/tencent/ads/service/AdMonitor$ApkState;->version:Ljava/lang/String;

    .line 828
    invoke-virtual {v0, v6}, Lcom/tencent/ads/service/AdMonitor$ApkState;->merge(Lcom/tencent/ads/service/AdMonitor$ApkState;)V

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_8

    .line 831
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    if-eqz p1, :cond_8

    .line 832
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    invoke-virtual {p1, v0}, Lcom/tencent/ads/service/AdMonitor;->setApkState(Lcom/tencent/ads/service/AdMonitor$ApkState;)V

    :cond_8
    return-void
.end method

.method private getCurrentVolume80Rate()F
    .locals 4

    .line 546
    invoke-direct {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getCurrentVolumeRate()F

    move-result v0

    iput v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->volumeRateToBeResume:F

    .line 547
    iget v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->volumeRateToBeResume:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    .line 548
    sget-object v1, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentVolume80Rate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private getCurrentVolumeRate()F
    .locals 6

    .line 529
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 533
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 534
    sget-object v3, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentVolume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mMaxSystemVolume:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 536
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mMaxSystemVolume:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 537
    iget v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mMaxSystemVolume:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->thresholdOfResumeAdVolume:F

    .line 538
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeAdVolume, thresholdOfResumeAdVolume = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->thresholdOfResumeAdVolume:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    int-to-float v0, v2

    .line 540
    iget v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mMaxSystemVolume:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 541
    sget-object v1, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentVolumeRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private getValidAd([Lcom/tencent/ads/data/AdItem;)[Lcom/tencent/ads/data/AdItem;
    .locals 12

    .line 712
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 713
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 714
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mEmptyAdList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 718
    array-length v2, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v6, p1, v4

    .line 720
    sget-object v7, Lcom/tencent/ads/data/AdParam;->AD_TYPE_SPONSOR_VALUE:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/tencent/ads/data/AdItem;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v7, v5, 0x1

    .line 721
    invoke-virtual {v6, v5}, Lcom/tencent/ads/data/AdItem;->setLcount(I)V

    move v5, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v3, 0x1

    .line 723
    invoke-virtual {v6, v3}, Lcom/tencent/ads/data/AdItem;->setLcount(I)V

    move v3, v7

    .line 725
    :goto_1
    invoke-virtual {v6}, Lcom/tencent/ads/data/AdItem;->getAdVideoItem()Lcom/tencent/ads/data/AdVideoItem;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 726
    sget-object v7, Lcom/tencent/ads/data/AdParam;->AD_TYPE_SPONSOR_VALUE:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/tencent/ads/data/AdItem;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 727
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 729
    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 731
    :cond_2
    invoke-virtual {v6}, Lcom/tencent/ads/data/AdItem;->getOid()J

    move-result-wide v7

    const-wide/16 v9, 0x1

    cmp-long v11, v7, v9

    if-nez v11, :cond_3

    .line 733
    iget-object v7, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mEmptyAdList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 737
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 738
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 741
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/tencent/ads/data/AdItem;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/tencent/ads/data/AdItem;

    return-object p1
.end method

.method private handleDsr()V
    .locals 1

    .line 980
    new-instance v0, Lcom/tencent/ads/v2/videoad/VideoAdView$1;

    invoke-direct {v0, p0}, Lcom/tencent/ads/v2/videoad/VideoAdView$1;-><init>(Lcom/tencent/ads/v2/videoad/VideoAdView;)V

    invoke-virtual {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleRichMediaAd()V
    .locals 6

    .line 1012
    invoke-static {}, Lcom/tencent/ads/utility/Utils;->isH5Supported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1016
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->removeRichMediaView()V

    .line 1017
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v0

    iget v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    .line 1019
    invoke-virtual {v0}, Lcom/tencent/ads/data/AdItem;->isRichMediaAd()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1020
    iget v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1021
    iput-boolean v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mNeedLoadingAnim:Z

    goto :goto_0

    .line 1023
    :cond_1
    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->uiHandler:Landroid/os/Handler;

    const/16 v3, 0x44d

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1025
    :goto_0
    invoke-virtual {v0}, Lcom/tencent/ads/data/AdItem;->useSafeInterface()Z

    move-result v1

    .line 1026
    invoke-virtual {v0}, Lcom/tencent/ads/data/AdItem;->isSkipRichMediaAd()Z

    move-result v3

    .line 1027
    invoke-virtual {v0}, Lcom/tencent/ads/data/AdItem;->getRichMediaUrl()Ljava/lang/String;

    move-result-object v4

    .line 1028
    invoke-virtual {v0}, Lcom/tencent/ads/data/AdItem;->getRichMediaZip()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/tencent/ads/v2/videoad/VideoAdView$2;

    invoke-direct {v5, p0, v1, v3, v4}, Lcom/tencent/ads/v2/videoad/VideoAdView$2;-><init>(Lcom/tencent/ads/v2/videoad/VideoAdView;ZZLjava/lang/String;)V

    iget v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-static {v4, v0, v5, v2}, Lcom/tencent/ads/utility/RichMediaCache;->generateIndexFilePath(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/ads/utility/RichMediaCache$GenerateIndexCallBack;Z)V

    :cond_3
    return-void
.end method

.method private hideRichMediaLoading()V
    .locals 3

    .line 1544
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "hideRichMediaLoading"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->resume()V

    .line 1546
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdLoadingView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    .line 1547
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1548
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v2, "stop Loading"

    invoke-static {v0, v2}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdLoadingService:Lcom/tencent/ads/view/AdServiceHandler$LoadingService;

    invoke-interface {v0}, Lcom/tencent/ads/view/AdServiceHandler$LoadingService;->stopLoading()V

    .line 1550
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdLoadingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1551
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdLoadingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdLoadingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1553
    :cond_0
    iput-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdLoadingView:Landroid/view/View;

    .line 1555
    :cond_1
    iput-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdLoadingService:Lcom/tencent/ads/view/AdServiceHandler$LoadingService;

    return-void
.end method

.method private initAdView()V
    .locals 1

    .line 1706
    invoke-virtual {p0, p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->createUI(Landroid/view/ViewGroup;)V

    const/4 v0, 0x4

    .line 1707
    invoke-virtual {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setVisibility(I)V

    return-void
.end method

.method private isAdClicked()Z
    .locals 2

    .line 1693
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    iget v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->isAdClicked(Lcom/tencent/ads/service/AdResponse;I)Z

    move-result v0

    return v0
.end method

.method private isClickWait()Z
    .locals 7

    .line 1151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1152
    iget-wide v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 1153
    iput-wide v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mLastClickTime:J

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isDownloadAd()Z
    .locals 2

    .line 1079
    :try_start_0
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v0

    iget v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/tencent/ads/data/AdItem;->isDownload()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isPlayedAd(JI)Z
    .locals 3

    .line 764
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAppConfigController:Lcom/tencent/ads/service/AppConfigController;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/ads/service/AppConfigController;->getAdPlayedTime(J)J

    move-result-wide p1

    .line 765
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long p1, p3

    cmp-long p3, v0, p1

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private isValidPosition(I)Z
    .locals 1

    if-lez p1, :cond_0

    .line 2232
    iget v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mLastPlayPosition:I

    if-eq p1, v0, :cond_0

    .line 2233
    iput p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mLastPlayPosition:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private loadPreloadAd(Lcom/tencent/ads/view/AdRequest;)Z
    .locals 4

    .line 309
    invoke-static {}, Lcom/tencent/ads/service/AdStore;->getInstance()Lcom/tencent/ads/service/AdStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/ads/service/AdStore;->hasPreLoadAd(Lcom/tencent/ads/view/AdRequest;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 312
    :cond_0
    invoke-static {}, Lcom/tencent/ads/service/AdStore;->getInstance()Lcom/tencent/ads/service/AdStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/ads/service/AdStore;->getPreLoadAd(Lcom/tencent/ads/view/AdRequest;)Lcom/tencent/ads/data/LoadAdItem;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 316
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/ads/data/LoadAdItem;->getAdResponse()Lcom/tencent/ads/service/AdResponse;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 317
    iput-boolean v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isAdLoadingFinished:Z

    .line 318
    invoke-virtual {v0}, Lcom/tencent/ads/data/LoadAdItem;->getAdResponse()Lcom/tencent/ads/service/AdResponse;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/tencent/ads/view/AdRequest;->setAdResponse(Lcom/tencent/ads/service/AdResponse;)V

    .line 319
    invoke-virtual {v0}, Lcom/tencent/ads/data/LoadAdItem;->getAdResponse()Lcom/tencent/ads/service/AdResponse;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tencent/ads/service/AdResponse;->setAdRequest(Lcom/tencent/ads/view/AdRequest;)V

    .line 321
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/ads/data/LoadAdItem;->getAdResponse()Lcom/tencent/ads/service/AdResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->handlerAdResponse(Lcom/tencent/ads/service/AdResponse;)V

    .line 322
    invoke-virtual {p1}, Lcom/tencent/ads/view/AdRequest;->getAdListener()Lcom/tencent/ads/view/AdListener;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/tencent/ads/view/AdRequest;->getAdResponse()Lcom/tencent/ads/service/AdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdResponse;->getTickerInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 324
    invoke-virtual {p1}, Lcom/tencent/ads/view/AdRequest;->getAdResponse()Lcom/tencent/ads/service/AdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdResponse;->getTickerInfoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/ads/view/AdRequest;->getLive()I

    move-result v2

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    .line 323
    :cond_2
    invoke-static {v0, v1}, Lcom/tencent/ads/service/AdResponse;->getFilterredTickerInfoList(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 325
    invoke-virtual {p1}, Lcom/tencent/ads/view/AdRequest;->getAdListener()Lcom/tencent/ads/view/AdListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/ads/view/AdListener;->onGetTickerInfoList(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 326
    invoke-virtual {p1, v0}, Lcom/tencent/ads/view/AdRequest;->setAdListener(Lcom/tencent/ads/view/AdListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 330
    invoke-virtual {p1}, Lcom/tencent/ads/view/AdRequest;->getAdType()I

    move-result p1

    if-ne p1, v3, :cond_3

    const-string p1, "loadPreRollAd preLoad"

    .line 331
    invoke-static {v0, p1}, Lcom/tencent/ads/service/AdPing;->doExcptionPing(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "loadPostRollAd preLoad"

    .line 333
    invoke-static {v0, p1}, Lcom/tencent/ads/service/AdPing;->doExcptionPing(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return v3

    .line 339
    :cond_5
    invoke-virtual {v0}, Lcom/tencent/ads/data/LoadAdItem;->getErrorCode()Lcom/tencent/ads/view/ErrorCode;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 340
    invoke-virtual {v0}, Lcom/tencent/ads/data/LoadAdItem;->getErrorCode()Lcom/tencent/ads/view/ErrorCode;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    .line 341
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    invoke-virtual {p1}, Lcom/tencent/ads/view/ErrorCode;->getCode()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 350
    :pswitch_0
    iput-boolean v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isAdLoadingFinished:Z

    .line 351
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->fireFailedEvent(Lcom/tencent/ads/view/ErrorCode;)V

    return v3

    .line 347
    :pswitch_1
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    invoke-virtual {p1}, Lcom/tencent/ads/service/AdMonitor;->init()V

    :cond_6
    return v1

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private needResumeAdVolume()Z
    .locals 2

    .line 569
    iget-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isVolumeChanged:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->volumeRateToBeResume:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private removePlayedAd([Lcom/tencent/ads/data/AdItem;)[Lcom/tencent/ads/data/AdItem;
    .locals 7

    .line 746
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAppAdConfig:Lcom/tencent/ads/service/AppAdConfig;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AppAdConfig;->getMaxSameAdInterval()I

    move-result v0

    .line 747
    sget-object v1, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MaxSameAdInterval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x63

    if-ne v0, v1, :cond_0

    return-object p1

    .line 752
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 754
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 755
    invoke-virtual {v4}, Lcom/tencent/ads/data/AdItem;->getOid()J

    move-result-wide v5

    invoke-direct {p0, v5, v6, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->isPlayedAd(JI)Z

    move-result v5

    if-nez v5, :cond_1

    .line 756
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 760
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/tencent/ads/data/AdItem;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/tencent/ads/data/AdItem;

    return-object p1
.end method

.method private resetBtnVisibility(Landroid/view/ViewGroup;Ljava/lang/String;I)V
    .locals 3

    if-eqz p1, :cond_4

    .line 1574
    invoke-virtual {p0, p2}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getBtnVisibilityStrategy(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p3, v1, :cond_1

    if-eqz p2, :cond_0

    if-ne p2, v2, :cond_1

    .line 1577
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-ne p3, v2, :cond_3

    if-eq p2, v1, :cond_2

    if-ne p2, v2, :cond_3

    .line 1580
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1581
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    .line 1582
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private resumeAdVolume()V
    .locals 4

    .line 554
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeAdVolume, isVolumeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isVolumeChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", volumeRateToBeResume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->volumeRateToBeResume:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-direct {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->needResumeAdVolume()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    invoke-direct {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getCurrentVolumeRate()F

    move-result v0

    .line 557
    iget v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->volumeRateToBeResume:F

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    .line 558
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 559
    sget-object v1, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeAdVolume, delta = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->thresholdOfResumeAdVolume:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 561
    iget v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->volumeRateToBeResume:F

    invoke-direct {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setVolume(F)V

    goto :goto_0

    .line 563
    :cond_0
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "resumeAdVolume, delta error, skip resume volume."

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setAdVolume(F)V
    .locals 3

    .line 1856
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", obj: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", currentVisibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1859
    sget-object p1, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v0, "View is gone, skip setAdVolume."

    invoke-static {p1, v0}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1862
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setVolume(F)V

    return-void
.end method

.method private setFullScreenStatus(Z)V
    .locals 3

    .line 371
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFullScreenStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    invoke-virtual {v0, p1}, Lcom/tencent/ads/service/AdMonitor;->setFullscreen(Z)V

    :cond_1
    return-void
.end method

.method private setMutedStatus(Z)V
    .locals 3

    .line 1850
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMutedStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    invoke-virtual {v0, p1}, Lcom/tencent/ads/service/AdMonitor;->setMuted(Z)V

    .line 1852
    iput-boolean p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsMute:Z

    return-void
.end method

.method private setPlayerMute(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1813
    invoke-direct {p0, p1, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setPlayerMute(ZZ)V

    return-void
.end method

.method private setPlayerMute(ZZ)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1817
    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mViewState:Lcom/tencent/ads/v2/PlayerAdView$ViewState;

    sget-object v2, Lcom/tencent/ads/v2/PlayerAdView$ViewState;->OPENED:Lcom/tencent/ads/v2/PlayerAdView$ViewState;

    if-ne v1, v2, :cond_0

    .line 1818
    invoke-direct {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setMutedStatus(Z)V

    .line 1820
    :cond_0
    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    if-eqz v1, :cond_9

    .line 1821
    sget-object v1, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPlayerMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    iput-boolean p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsMute:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_5

    .line 1824
    iget-object p2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v3

    const-string v3, "onVolumnChange"

    invoke-static {p2, v3, v0}, Lcom/tencent/ads/utility/FeatureUtils;->isSupportAdListener(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1825
    iget-object p2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-interface {p2, v0}, Lcom/tencent/ads/view/AdListener;->onVolumnChange(F)V

    goto :goto_2

    .line 1827
    :cond_2
    iget p2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mLastUnmuteVolume:F

    cmpl-float p2, p2, v2

    if-nez p2, :cond_3

    .line 1828
    invoke-direct {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getCurrentVolumeRate()F

    move-result p2

    iput p2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mLastUnmuteVolume:F

    :cond_3
    if-eqz p1, :cond_4

    const/4 p2, 0x0

    goto :goto_1

    .line 1830
    :cond_4
    iget p2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mLastUnmuteVolume:F

    :goto_1
    invoke-direct {p0, p2}, Lcom/tencent/ads/v2/videoad/VideoAdView;->changeSystemVolumeRate(F)V

    .line 1833
    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    if-eqz p2, :cond_7

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    .line 1834
    :cond_6
    invoke-virtual {p2, v1}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->notifyVolumeChanged(F)V

    .line 1837
    :cond_7
    iget-object p2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mBaseMraidAdView:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    .line 1838
    sget-object p1, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string p2, "set H5 Mute"

    invoke-static {p1, p2}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mBaseMraidAdView:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;

    invoke-virtual {p1}, Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;->mute()V

    .line 1840
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->lastH5MuteTime:J

    goto :goto_3

    .line 1841
    :cond_8
    iget-object p2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mBaseMraidAdView:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;

    if-eqz p2, :cond_9

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mBaseMraidAdView:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;

    invoke-virtual {p1}, Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;->isMute()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1842
    sget-object p1, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string p2, "set H5 unMute"

    invoke-static {p1, p2}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mBaseMraidAdView:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;

    invoke-virtual {p1}, Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;->unmute()V

    .line 1844
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->lastH5MuteTime:J

    :cond_9
    :goto_3
    return-void
.end method

.method private setVolume(F)V
    .locals 8

    .line 1866
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    iget v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentVolumeRate:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1869
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1870
    iget-wide v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->lastChangeVolumeTime:J

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 1871
    sget-object v5, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delta: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", deltaChangeTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x64

    cmp-long v7, v3, v5

    if-gtz v7, :cond_0

    .line 1873
    sget-object p1, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v0, "deltaChangeTime <= 100, skip setAdVolume."

    invoke-static {p1, v0}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    .line 1877
    iget v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentVolumeRate:F

    iput v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mLastVolumeRate:F

    .line 1878
    iput p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentVolumeRate:F

    .line 1879
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    if-eqz v0, :cond_1

    .line 1880
    iget v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentVolumeRate:F

    invoke-virtual {v0, v3}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->setCurrentVolumeRate(F)V

    :cond_1
    const/4 v0, 0x1

    .line 1882
    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isVolumeChanged:Z

    .line 1884
    :cond_2
    iput-wide v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->lastChangeVolumeTime:J

    .line 1886
    invoke-direct {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->changeSystemVolumeRate(F)V

    .line 1888
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    if-eqz v0, :cond_3

    .line 1889
    invoke-virtual {v0, p1}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->notifyVolumeChanged(F)V

    :cond_3
    return-void
.end method

.method private showRichMediaLoading()V
    .locals 3

    .line 1516
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "showRichMediaLoading"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->pause()V

    .line 1518
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdLoadingService:Lcom/tencent/ads/view/AdServiceHandler$LoadingService;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getVideoAdServieHandler()Lcom/tencent/ads/view/AdServiceHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1519
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getVideoAdServieHandler()Lcom/tencent/ads/view/AdServiceHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/ads/view/AdServiceHandler;->generateAdLoadingService()Lcom/tencent/ads/view/AdServiceHandler$LoadingService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdLoadingService:Lcom/tencent/ads/view/AdServiceHandler$LoadingService;

    .line 1521
    :cond_0
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdLoadingService:Lcom/tencent/ads/view/AdServiceHandler$LoadingService;

    if-nez v0, :cond_1

    .line 1522
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "generate adLoadingService failed"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1525
    :cond_1
    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/tencent/ads/view/AdServiceHandler$LoadingService;->getLoadingView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdLoadingView:Landroid/view/View;

    .line 1526
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdLoadingView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 1527
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "get adLoadingView failed"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1528
    iput-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdLoadingService:Lcom/tencent/ads/view/AdServiceHandler$LoadingService;

    return-void

    .line 1531
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 1532
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1534
    :try_start_0
    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdLoadingView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1535
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdLoadingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1536
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "start Loading"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdLoadingService:Lcom/tencent/ads/view/AdServiceHandler$LoadingService;

    invoke-interface {v0}, Lcom/tencent/ads/view/AdServiceHandler$LoadingService;->startLoading()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1539
    sget-object v1, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v2, "showRichMediaLoading failed"

    invoke-static {v1, v2, v0}, Lcom/tencent/adcore/utility/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private skipCurRichMedia()V
    .locals 2

    .line 1060
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "skipCurRichMedia"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->onH5SkipAd()V

    return-void
.end method

.method private startCountDownThread()V
    .locals 2

    .line 1503
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "updateCountDown"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCountDownThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCountDownRunnable:Lcom/tencent/ads/v2/utils/BaseTimerRunnable;

    invoke-virtual {v0}, Lcom/tencent/ads/v2/utils/BaseTimerRunnable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1505
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCountDownRunnable:Lcom/tencent/ads/v2/utils/BaseTimerRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCountDownThread:Ljava/lang/Thread;

    .line 1507
    :try_start_0
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCountDownThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1508
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "updateCountDown start"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1510
    sget-object v1, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/adcore/utility/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected checkCountDownValue(I)I
    .locals 4

    .line 1682
    iget v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdTotalDuration:I

    sub-int/2addr v0, p1

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method protected checkVipCommend()Z
    .locals 2

    .line 1686
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v0

    array-length v0, v0

    iget v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v0

    iget v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/tencent/ads/data/AdItem;->isVipCommendAd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected clickSkipTip()V
    .locals 3

    .line 1774
    iget-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsCurAdTrueView:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1775
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->isTrueViewSkipPosReached()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1776
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v2, "skipAd while isTrueView"

    invoke-static {v0, v2}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    iput v1, v0, Lcom/tencent/ads/service/AdMonitor;->userClose:I

    const/4 v0, 0x0

    .line 1778
    invoke-virtual {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->skipCurAd(Z)V

    goto :goto_0

    .line 1780
    :cond_0
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    iget-object v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    invoke-static {v0, v2}, Lcom/tencent/ads/utility/Utils;->isVip(Lcom/tencent/ads/service/AdResponse;Lcom/tencent/ads/view/AdRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1781
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v2, "skipAd while isVip"

    invoke-static {v0, v2}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    iput v1, v0, Lcom/tencent/ads/service/AdMonitor;->userClose:I

    .line 1783
    invoke-virtual {p0, v1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->skipCurAd(Z)V

    goto :goto_0

    .line 1785
    :cond_1
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "skipAd while isNormal"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    if-eqz v0, :cond_2

    .line 1787
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    invoke-interface {v0}, Lcom/tencent/ads/view/AdListener;->onSkipAdClicked()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected clickWarnerTip()V
    .locals 1

    .line 1768
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    if-eqz v0, :cond_0

    .line 1769
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    invoke-interface {v0}, Lcom/tencent/ads/view/AdListener;->onWarnerTipClick()V

    :cond_0
    return-void
.end method

.method protected createAdCanvasLandingPageIntent(Lcom/tencent/ads/data/AdItem;)Landroid/content/Intent;
    .locals 2

    .line 1198
    invoke-super {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->createAdCanvasLandingPageIntent(Lcom/tencent/ads/data/AdItem;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1202
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsMute:Z

    const-string v1, "isVideoDefaultMute"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p1
.end method

.method protected createAdLandingPageIntent(Ljava/lang/String;Lcom/tencent/ads/data/AdItem;)Landroid/content/Intent;
    .locals 2

    .line 1190
    invoke-super {p0, p1, p2}, Lcom/tencent/ads/v2/PlayerAdView;->createAdLandingPageIntent(Ljava/lang/String;Lcom/tencent/ads/data/AdItem;)Landroid/content/Intent;

    move-result-object p1

    .line 1191
    iget p2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    invoke-direct {p0, p2}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getAdShowTime(I)J

    move-result-wide v0

    const-string p2, "played_time"

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1192
    iget p2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    const-string v0, "played_index"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p1
.end method

.method public createUI(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1713
    :try_start_0
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    if-nez v0, :cond_0

    .line 1714
    invoke-static {}, Lcom/tencent/ads/utility/AdSetting;->getApp()Lcom/tencent/adcore/utility/AdCoreSetting$APP;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/ads/v2/PlayerAdUIFactory;->createUI(Lcom/tencent/adcore/utility/AdCoreSetting$APP;Landroid/content/Context;)Lcom/tencent/ads/v2/PlayerAdUI;

    move-result-object v0

    check-cast v0, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    iput-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    .line 1716
    :cond_0
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    if-nez v0, :cond_1

    .line 1717
    sget-object p1, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v0, "createUI failed: playerAdUI create fail !!!"

    invoke-static {p1, v0}, Lcom/tencent/adcore/utility/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1722
    :cond_1
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    invoke-virtual {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->fillVideoAdUIParams(Lcom/tencent/ads/v2/ui/PlayerAdUIBase;)V

    .line 1723
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getAdType()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->createUI(Landroid/view/ViewGroup;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1725
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "createUI failed"

    invoke-static {v0, v1, p1}, Lcom/tencent/adcore/utility/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected destroy()V
    .locals 2

    .line 2443
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2445
    :try_start_0
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 2446
    iput-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "unregister VolumeReceiver"

    .line 2447
    invoke-static {v0}, Lcom/tencent/adcore/utility/SLog;->v(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2449
    sget-object v1, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/adcore/utility/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2452
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/tencent/ads/v2/PlayerAdView;->destroy()V

    return-void
.end method

.method protected destroyUI()V
    .locals 3

    .line 2473
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAnchor:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->findAdRootLayout(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 2474
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 2475
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2478
    :cond_0
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->delaySetPlayerMuteRunable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2480
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->adDsrView:Lcom/tencent/ads/v2/ui/view/AdDsrView;

    if-eqz v0, :cond_1

    .line 2481
    invoke-virtual {v0}, Lcom/tencent/ads/v2/ui/view/AdDsrView;->destroy()V

    .line 2484
    :cond_1
    invoke-super {p0}, Lcom/tencent/ads/v2/PlayerAdView;->destroyUI()V

    return-void
.end method

.method protected disableMiniMode()V
    .locals 2

    .line 1368
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "disableMiniMode"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->uiHandler:Landroid/os/Handler;

    const/16 v1, 0x454

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected doClick()V
    .locals 2

    .line 1141
    invoke-direct {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->isClickWait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "return due to click-wait"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AdBarrageManager"

    .line 1143
    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1147
    :cond_0
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    iget v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->doClick(Lcom/tencent/ads/service/AdResponse;I)V

    return-void
.end method

.method protected doClick(Ljava/lang/String;Lcom/tencent/ads/service/AdResponse;I[Lcom/tencent/ads/data/ReportClickItem;)V
    .locals 3

    .line 1161
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/ads/v2/PlayerAdView;->doClick(Ljava/lang/String;Lcom/tencent/ads/service/AdResponse;I[Lcom/tencent/ads/data/ReportClickItem;)V

    .line 1162
    invoke-virtual {p2}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object p1

    aget-object p1, p1, p3

    .line 1163
    iget-object p3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mInstantMonitor:Lcom/tencent/ads/service/InstantAdMonitor;

    if-eqz p3, :cond_0

    .line 1164
    sget-object p4, Lcom/tencent/ads/service/InstantAdMonitor$PingFlag;->CLICK_COORDINATE:Lcom/tencent/ads/service/InstantAdMonitor$PingFlag;

    const v0, 0x98e88f

    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getOid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tencent/ads/service/AdResponse;->getRequestId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p4, v0, p1, p2}, Lcom/tencent/ads/service/AdPing;->doInstantDp3Ping(Lcom/tencent/ads/service/InstantAdMonitor;Lcom/tencent/ads/service/InstantAdMonitor$PingFlag;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected doEmptyPing(Z)V
    .locals 6

    .line 1258
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mEmptyAdList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "1"

    if-eqz p1, :cond_3

    .line 1263
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mEmptyAdList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/ads/data/AdItem;

    .line 1265
    iget-object v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-static {v2, v1}, Lcom/tencent/ads/service/AdPing;->doEmptyPing(Lcom/tencent/ads/service/AdResponse;Lcom/tencent/ads/data/AdItem;)V

    .line 1266
    iget-object v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    invoke-virtual {v2, v0}, Lcom/tencent/ads/service/AdMonitor;->addOid(Ljava/lang/String;)V

    .line 1267
    invoke-static {}, Lcom/tencent/ads/utility/FeatureUtils;->isSupportOfflineAd()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    invoke-virtual {v2}, Lcom/tencent/ads/view/AdRequest;->isOfflineCPD()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1268
    invoke-virtual {v1}, Lcom/tencent/ads/data/AdItem;->getLcount()I

    move-result v1

    invoke-static {v1}, Lcom/tencent/ads/offline/OfflineManager;->addPlayRound(I)V

    goto :goto_0

    .line 1271
    :cond_2
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mEmptyAdList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    goto :goto_2

    .line 1272
    :cond_3
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {p1}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_6

    .line 1273
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {p1}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object p1

    iget v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getLcount()I

    move-result p1

    .line 1274
    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v1}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v1

    iget v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/tencent/ads/data/AdItem;->getType()Ljava/lang/String;

    move-result-object v1

    .line 1276
    iget-object v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mEmptyAdList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/ads/data/AdItem;

    .line 1277
    invoke-virtual {v3}, Lcom/tencent/ads/data/AdItem;->getLcount()I

    move-result v4

    .line 1279
    invoke-virtual {v3}, Lcom/tencent/ads/data/AdItem;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-ge v4, p1, :cond_4

    .line 1282
    invoke-static {}, Lcom/tencent/ads/utility/FeatureUtils;->isSupportOfflineAd()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    invoke-virtual {v4}, Lcom/tencent/ads/view/AdRequest;->isOfflineCPD()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1283
    invoke-virtual {v3}, Lcom/tencent/ads/data/AdItem;->getLcount()I

    move-result v4

    invoke-static {v4}, Lcom/tencent/ads/offline/OfflineManager;->addPlayRound(I)V

    .line 1285
    :cond_5
    iget-object v4, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-static {v4, v3}, Lcom/tencent/ads/service/AdPing;->doEmptyPing(Lcom/tencent/ads/service/AdResponse;Lcom/tencent/ads/data/AdItem;)V

    .line 1286
    iget-object v4, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    invoke-virtual {v4, v0}, Lcom/tencent/ads/service/AdMonitor;->addOid(Ljava/lang/String;)V

    .line 1287
    iget-object v4, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mEmptyAdList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method protected doLoadAd(Lcom/tencent/ads/view/AdRequest;)V
    .locals 2

    .line 259
    invoke-super {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->doLoadAd(Lcom/tencent/ads/view/AdRequest;)V

    .line 260
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    if-nez v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mViewState:Lcom/tencent/ads/v2/PlayerAdView$ViewState;

    sget-object v1, Lcom/tencent/ads/v2/PlayerAdView$ViewState;->OPENED:Lcom/tencent/ads/v2/PlayerAdView$ViewState;

    if-ne v0, v1, :cond_0

    .line 263
    sget-object p1, Lcom/tencent/ads/v2/videoad/VideoAd$SkipCause;->OTHER_REASON:Lcom/tencent/ads/v2/videoad/VideoAd$SkipCause;

    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->informAdSkipped(Lcom/tencent/ads/v2/videoad/VideoAd$SkipCause;)V

    return-void

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->remove()V

    .line 267
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->resetLoadAdParams()V

    .line 268
    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->loadNormalAd(Lcom/tencent/ads/view/AdRequest;)V

    :cond_1
    return-void
.end method

.method protected enableMiniMode()V
    .locals 2

    .line 1363
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "enableMiniMode"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->uiHandler:Landroid/os/Handler;

    const/16 v1, 0x455

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected fillVideoAdUIParams(Lcom/tencent/ads/v2/ui/PlayerAdUIBase;)V
    .locals 2

    .line 1730
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    invoke-virtual {p1, v0}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->setAdRequest(Lcom/tencent/ads/view/AdRequest;)V

    .line 1731
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {p1, v0}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->setAdResponse(Lcom/tencent/ads/service/AdResponse;)V

    .line 1732
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItem:Lcom/tencent/ads/data/AdItem;

    invoke-virtual {p1, v0}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->setAdItem(Lcom/tencent/ads/data/AdItem;)V

    .line 1733
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->showCountDown()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->setShowCountDown(Z)V

    .line 1734
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->showSkip()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->setShowSkip(Z)V

    .line 1735
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->shouldBeExpanded()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->setShouleBeExpanded(Z)V

    .line 1736
    iget-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsEnableClick:Z

    invoke-virtual {p1, v0}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->setEnableClick(Z)V

    .line 1737
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    invoke-virtual {v0}, Lcom/tencent/ads/view/AdRequest;->isOfflineCPD()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->setIsOfflineCPD(Z)V

    .line 1738
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-static {v0}, Lcom/tencent/ads/utility/Utils;->isSpecialVideo(Lcom/tencent/ads/service/AdResponse;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->setSpecialVideo(Z)V

    .line 1739
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-static {v0}, Lcom/tencent/ads/utility/Utils;->isWarnerVideo(Lcom/tencent/ads/service/AdResponse;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->setWarnerVideo(Z)V

    .line 1740
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-static {v0}, Lcom/tencent/ads/utility/Utils;->isHBOVideo(Lcom/tencent/ads/service/AdResponse;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->setHBOVideo(Z)V

    .line 1741
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    invoke-static {v0, v1}, Lcom/tencent/ads/utility/Utils;->isVip(Lcom/tencent/ads/service/AdResponse;Lcom/tencent/ads/view/AdRequest;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->setVip(Z)V

    .line 1742
    iget-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsCurAdTrueView:Z

    invoke-virtual {p1, v0}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->setTrueView(Z)V

    .line 1743
    iget v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentVolumeRate:F

    invoke-virtual {p1, v0}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->setCurrentVolumeRate(F)V

    .line 1744
    iget v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdTotalDuration:I

    invoke-virtual {p1, v0}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->setAdTotalDuration(I)V

    .line 1745
    invoke-virtual {p1, p0}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->setListener(Lcom/tencent/ads/v2/ui/PlayerAdUIBase$VideoAdUIListener;)V

    return-void
.end method

.method public getAdPlayedDuration()I
    .locals 1

    .line 504
    iget v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdPlayedDuration:I

    return v0
.end method

.method protected getBtnVisibilityStrategy(Ljava/lang/String;)I
    .locals 3

    .line 888
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    invoke-virtual {v0, p1}, Lcom/tencent/ads/view/AdRequest;->getAppStrategy(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 890
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 891
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const-string v2, "RESET_LAYOUT_FULLSCREEN"

    .line 895
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    :cond_1
    return v0
.end method

.method public getCurAdPosition()I
    .locals 2

    .line 902
    iget v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdPlayedDuration:I

    iget v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getPrevAdDuration(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getCurrentAdItem()Lcom/tencent/ads/data/AdItem;
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItem:Lcom/tencent/ads/data/AdItem;

    return-object v0
.end method

.method protected getPrevAdDuration(I)I
    .locals 4

    .line 912
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 913
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 915
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 916
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/tencent/ads/data/AdItem;->getDuration()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method public getVideoDuration()I
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdResponse;->getVideoDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoPlayedProgress()F
    .locals 3

    .line 2165
    iget v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdPlayedDuration:I

    if-lez v0, :cond_0

    .line 2167
    :try_start_0
    iget v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getPrevAdDuration(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 2168
    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v1}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v1

    iget v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/tencent/ads/data/AdItem;->getDuration()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v0, v1

    return v0

    .line 2175
    :catch_0
    :cond_0
    invoke-super {p0}, Lcom/tencent/ads/v2/PlayerAdView;->getVideoPlayedProgress()F

    move-result v0

    return v0
.end method

.method protected handleMonitorPing()V
    .locals 4

    .line 1247
    iget-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->hasMonitorPinged:Z

    if-nez v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/tencent/ads/service/AdMonitor;->setErrorCode(Lcom/tencent/ads/view/ErrorCode;)V

    .line 1250
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    iget v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    iget-object v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mFirstAdItem:Lcom/tencent/ads/data/AdItem;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/ads/service/AdPing;->doStepPing(Lcom/tencent/ads/view/AdRequest;Lcom/tencent/ads/view/ErrorCode;ILcom/tencent/ads/data/AdItem;)V

    .line 1253
    :cond_0
    invoke-super {p0}, Lcom/tencent/ads/v2/PlayerAdView;->handleMonitorPing()V

    return-void
.end method

.method public handlerAdResponse(Lcom/tencent/ads/service/AdResponse;)V
    .locals 6

    .line 575
    invoke-super {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->handlerAdResponse(Lcom/tencent/ads/service/AdResponse;)V

    .line 576
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {p1}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object p1

    .line 577
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "original adItemArray length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 580
    aget-object v0, p1, v1

    iput-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mFirstAdItem:Lcom/tencent/ads/data/AdItem;

    .line 583
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getValidAd([Lcom/tencent/ads/data/AdItem;)[Lcom/tencent/ads/data/AdItem;

    move-result-object p1

    .line 585
    array-length v0, p1

    const/4 v2, 0x1

    if-lez v0, :cond_1

    aget-object v0, p1, v1

    invoke-virtual {v0}, Lcom/tencent/ads/data/AdItem;->getAdVideoItem()Lcom/tencent/ads/data/AdVideoItem;

    move-result-object v0

    if-eqz v0, :cond_1

    aget-object v0, p1, v1

    .line 586
    invoke-virtual {v0}, Lcom/tencent/ads/data/AdItem;->getAdVideoItem()Lcom/tencent/ads/data/AdVideoItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/ads/data/AdVideoItem;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 587
    :goto_0
    sget-object v3, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "valid adItemArray length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iput-boolean v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isAdLoadSuc:Z

    .line 590
    iput-boolean v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isPlayed:Z

    const-string v3, "ad load suc"

    .line 591
    invoke-static {v3}, Lcom/tencent/adcore/utility/SLog;->v(Ljava/lang/String;)V

    .line 593
    iget-object v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v3, p1}, Lcom/tencent/ads/service/AdResponse;->setAdItemArray([Lcom/tencent/ads/data/AdItem;)V

    .line 594
    array-length v3, p1

    if-nez v3, :cond_2

    .line 595
    new-instance p1, Lcom/tencent/ads/view/ErrorCode;

    const/16 v0, 0x65

    const-string v1, "no ad for this vid."

    invoke-direct {p1, v0, v1}, Lcom/tencent/ads/view/ErrorCode;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    .line 596
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->fireFailedEvent(Lcom/tencent/ads/view/ErrorCode;)V

    return-void

    .line 601
    :cond_2
    iget-boolean v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->cIsTestUser:Z

    if-nez v3, :cond_5

    .line 602
    invoke-direct {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->removePlayedAd([Lcom/tencent/ads/data/AdItem;)[Lcom/tencent/ads/data/AdItem;

    move-result-object p1

    .line 603
    sget-object v3, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removePlayedAd adItemArray length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v3, p1}, Lcom/tencent/ads/service/AdResponse;->setAdItemArray([Lcom/tencent/ads/data/AdItem;)V

    .line 606
    array-length v3, p1

    if-nez v3, :cond_3

    .line 607
    new-instance p1, Lcom/tencent/ads/view/ErrorCode;

    const/16 v0, 0x25a

    const-string v1, "No proper ad due to same ad interval control."

    invoke-direct {p1, v0, v1}, Lcom/tencent/ads/view/ErrorCode;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    .line 608
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->fireFailedEvent(Lcom/tencent/ads/view/ErrorCode;)V

    return-void

    .line 612
    :cond_3
    invoke-direct {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->checkAdAmount([Lcom/tencent/ads/data/AdItem;)[Lcom/tencent/ads/data/AdItem;

    move-result-object p1

    .line 613
    sget-object v3, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAdAmount adItemArray length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-object v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v3, p1}, Lcom/tencent/ads/service/AdResponse;->setAdItemArray([Lcom/tencent/ads/data/AdItem;)V

    .line 616
    array-length v3, p1

    if-nez v3, :cond_4

    .line 617
    new-instance p1, Lcom/tencent/ads/view/ErrorCode;

    const/16 v0, 0x25c

    const-string v1, "MaxAdAmount is 0."

    invoke-direct {p1, v0, v1}, Lcom/tencent/ads/view/ErrorCode;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    .line 618
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->fireFailedEvent(Lcom/tencent/ads/view/ErrorCode;)V

    return-void

    .line 624
    :cond_4
    iget-object v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    invoke-static {v3}, Lcom/tencent/ads/utility/Utils;->isTencentVideoVip(Lcom/tencent/ads/view/AdRequest;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    iget-object v4, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    invoke-static {v3, v4}, Lcom/tencent/ads/utility/Utils;->isVip(Lcom/tencent/ads/service/AdResponse;Lcom/tencent/ads/view/AdRequest;)Z

    move-result v3

    if-nez v3, :cond_5

    array-length v3, p1

    if-lez v3, :cond_5

    .line 625
    sget-object p1, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v0, "User is vip with Ad."

    invoke-static {p1, v0}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    new-instance p1, Lcom/tencent/ads/view/ErrorCode;

    const/16 v1, 0xe6

    invoke-direct {p1, v1, v0}, Lcom/tencent/ads/view/ErrorCode;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    .line 627
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->fireFailedEvent(Lcom/tencent/ads/view/ErrorCode;)V

    return-void

    .line 632
    :cond_5
    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->handlerValidAdItems([Lcom/tencent/ads/data/AdItem;)V

    .line 634
    iget-object v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    iget-object v4, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v4}, Lcom/tencent/ads/service/AdResponse;->getMediaItemStats()[Lcom/tencent/ads/service/AdMediaItemStat;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/ads/service/AdMonitor;->setAdQualityArray([Lcom/tencent/ads/service/AdMediaItemStat;)V

    .line 636
    iget-object v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->uiHandler:Landroid/os/Handler;

    const/16 v4, 0x3ee

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 638
    iget-object v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v3}, Lcom/tencent/ads/service/AdResponse;->isAdSelector()Z

    move-result v3

    if-nez v3, :cond_8

    .line 639
    invoke-virtual {p0, v1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->informCurrentAdIndex(I)V

    if-eqz v0, :cond_6

    new-array v0, v2, [Lcom/tencent/ads/data/AdVideoItem;

    .line 642
    new-instance v3, Lcom/tencent/ads/data/AdVideoItem;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getAdVideoItem()Lcom/tencent/ads/data/AdVideoItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/ads/data/AdVideoItem;->getUrlList()Ljava/util/ArrayList;

    move-result-object p1

    iget v4, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdTotalDuration:I

    invoke-direct {v3, v2, p1, v4}, Lcom/tencent/ads/data/AdVideoItem;-><init>(ZLjava/util/ArrayList;I)V

    aput-object v3, v0, v1

    goto :goto_2

    .line 644
    :cond_6
    array-length v0, p1

    .line 645
    new-array v0, v0, [Lcom/tencent/ads/data/AdVideoItem;

    .line 646
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_7

    .line 647
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/tencent/ads/data/AdItem;->getAdVideoItem()Lcom/tencent/ads/data/AdVideoItem;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 650
    :cond_7
    :goto_2
    sget-object p1, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "mAdListener.onReceiveAd"

    invoke-static {p1, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    invoke-virtual {p1}, Lcom/tencent/ads/service/AdMonitor;->setStartFbt()V

    .line 652
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    if-eqz p1, :cond_8

    .line 653
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v1}, Lcom/tencent/ads/service/AdResponse;->getType()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/tencent/ads/view/AdListener;->onReceiveAd([Lcom/tencent/ads/data/AdVideoItem;I)V

    :cond_8
    return-void
.end method

.method protected handlerDownloadAdClick(Lcom/tencent/ads/data/AdItem;Ljava/lang/String;Lcom/tencent/ads/service/AdResponse;I[Lcom/tencent/ads/data/ReportClickItem;)V
    .locals 2

    .line 1170
    invoke-super/range {p0 .. p5}, Lcom/tencent/ads/v2/PlayerAdView;->handlerDownloadAdClick(Lcom/tencent/ads/data/AdItem;Ljava/lang/String;Lcom/tencent/ads/service/AdResponse;I[Lcom/tencent/ads/data/ReportClickItem;)V

    .line 1173
    new-instance p1, Lcom/tencent/adcore/service/AdCoreQuality;

    invoke-direct {p1}, Lcom/tencent/adcore/service/AdCoreQuality;-><init>()V

    .line 1174
    iget-object p2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    if-eqz p2, :cond_0

    .line 1175
    iget-object p2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    invoke-interface {p2}, Lcom/tencent/ads/view/AdListener;->reportPlayPosition()I

    move-result p2

    invoke-virtual {p0, p4}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getPrevAdDuration(I)I

    move-result p5

    sub-int/2addr p2, p5

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/adcore/service/AdCoreQuality;->setAdDidShownTime(J)V

    .line 1177
    :cond_0
    invoke-virtual {p3}, Lcom/tencent/ads/service/AdResponse;->getMediaItemStats()[Lcom/tencent/ads/service/AdMediaItemStat;

    move-result-object p2

    aget-object p2, p2, p4

    invoke-virtual {p2, p1}, Lcom/tencent/ads/service/AdMediaItemStat;->addItem(Lcom/tencent/adcore/service/AdCoreQuality;)V

    return-void
.end method

.method protected handlerValidAdItems([Lcom/tencent/ads/data/AdItem;)V
    .locals 4

    .line 664
    invoke-direct {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getAppInstallState([Lcom/tencent/ads/data/AdItem;)V

    .line 665
    invoke-direct {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->downloadRichMediaFodder([Lcom/tencent/ads/data/AdItem;)V

    .line 667
    invoke-direct {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->checkTrueView([Lcom/tencent/ads/data/AdItem;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsCurAdTrueView:Z

    .line 668
    iget-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsCurAdTrueView:Z

    if-eqz v0, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/ads/service/AdMonitor;->isTrueview:I

    :cond_0
    const/4 v0, 0x0

    .line 672
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 673
    aget-object v2, p1, v0

    .line 674
    iget v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdTotalDuration:I

    invoke-virtual {v2}, Lcom/tencent/ads/data/AdItem;->getDuration()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdTotalDuration:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 676
    :cond_1
    sget-object p1, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAdTotalDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdTotalDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public informAdFinished()V
    .locals 3

    .line 473
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "informAdFinished"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 474
    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isPlayed:Z

    .line 475
    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    if-eqz v1, :cond_1

    .line 476
    iget-boolean v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mSkipped:Z

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    invoke-virtual {v1, v0}, Lcom/tencent/ads/service/AdMonitor;->setIsskip(Z)V

    goto :goto_0

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/ads/service/AdMonitor;->setIsskip(Z)V

    .line 483
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->doEmptyPing(Z)V

    .line 485
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v0

    array-length v0, v0

    iget v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    if-le v0, v1, :cond_3

    .line 486
    invoke-direct {p0, v1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->checkLastFramePing(I)V

    .line 487
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAppConfigController:Lcom/tencent/ads/service/AppConfigController;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AppConfigController;->addAdPlayedAmount()V

    .line 488
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAppConfigController:Lcom/tencent/ads/service/AppConfigController;

    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v1}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v1

    iget v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/tencent/ads/data/AdItem;->getOid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/ads/service/AppConfigController;->setAdPlayedTime(J)V

    .line 489
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAppConfigController:Lcom/tencent/ads/service/AppConfigController;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AppConfigController;->setAdPlayedLastTime()V

    .line 490
    iget-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mSkipped:Z

    if-nez v0, :cond_2

    .line 491
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdResponse;->getMediaItemStats()[Lcom/tencent/ads/service/AdMediaItemStat;

    move-result-object v0

    iget v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v1}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v1

    iget v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/tencent/ads/data/AdItem;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/ads/service/AdMediaItemStat;->setVideopt(J)V

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdConfig:Lcom/tencent/ads/service/AdConfig;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdConfig;->updateLastAdPlayTime()V

    .line 496
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->stopAd()V

    return-void
.end method

.method public informAdPlaying()V
    .locals 2

    .line 394
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "informAdPlaying"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 395
    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isPlayed:Z

    return-void
.end method

.method public informAdPrepared()V
    .locals 2

    .line 382
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "informAdPrepared"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 383
    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isAdPrepared:Z

    .line 386
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdMonitor;->setFbt()V

    return-void
.end method

.method public informAdSkipped(Lcom/tencent/ads/v2/videoad/VideoAd$SkipCause;)V
    .locals 1

    .line 405
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->doSkipAd(Lcom/tencent/ads/v2/videoad/VideoAd$SkipCause;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 407
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/adcore/utility/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected informCurrentAd(Lcom/tencent/ads/data/AdItem;)V
    .locals 1

    .line 973
    iget-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsCurAdTrueView:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/ads/data/AdItem;->getDuration()I

    move-result p1

    invoke-static {}, Lcom/tencent/ads/service/AdConfig;->getInstance()Lcom/tencent/ads/service/AdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdConfig;->getTrueViewCountLimit()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 975
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->uiHandler:Landroid/os/Handler;

    const/16 v0, 0x453

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method protected informCurrentAdIndex(I)V
    .locals 6

    .line 928
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "informCurrentAdIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/ads/utility/Utils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v0

    array-length v0, v0

    if-ltz p1, :cond_3

    if-ge p1, v0, :cond_3

    add-int/lit8 v0, p1, -0x1

    .line 935
    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->updateCurrentAdItem(I)V

    .line 936
    invoke-direct {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->handleDsr()V

    .line 937
    invoke-direct {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->handleRichMediaAd()V

    .line 938
    invoke-direct {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->checkDownloadAd()V

    .line 939
    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    if-eqz v1, :cond_1

    .line 940
    iget v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    invoke-virtual {v1, v2}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->setCurrentAdItemIndex(I)V

    .line 941
    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    iget-object v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItem:Lcom/tencent/ads/data/AdItem;

    invoke-virtual {v1, v2}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->setAdItem(Lcom/tencent/ads/data/AdItem;)V

    :cond_1
    if-lez p1, :cond_2

    const/4 v1, 0x0

    .line 947
    invoke-virtual {p0, v1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->doEmptyPing(Z)V

    .line 948
    invoke-direct {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->checkLastFramePing(I)V

    .line 949
    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAppConfigController:Lcom/tencent/ads/service/AppConfigController;

    iget-object v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v2}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/tencent/ads/data/AdItem;->getOid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/ads/service/AppConfigController;->setAdPlayedTime(J)V

    .line 950
    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v1}, Lcom/tencent/ads/service/AdResponse;->getMediaItemStats()[Lcom/tencent/ads/service/AdMediaItemStat;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mStartLoadTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/tencent/ads/service/AdMediaItemStat;->setVideott(J)V

    .line 951
    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v1}, Lcom/tencent/ads/service/AdResponse;->getMediaItemStats()[Lcom/tencent/ads/service/AdMediaItemStat;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v2}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lcom/tencent/ads/data/AdItem;->getDuration()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/ads/service/AdMediaItemStat;->setVideopt(J)V

    .line 953
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->uiHandler:Landroid/os/Handler;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 956
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mStartLoadTime:J

    .line 958
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v0

    aget-object p1, v0, p1

    .line 959
    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->informCurrentAd(Lcom/tencent/ads/data/AdItem;)V

    .line 961
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->isFullScreenClickableAd()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setClickable(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public informVideoFinished()V
    .locals 2

    .line 423
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "informVideoFinished"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public informVideoPlayed()V
    .locals 2

    .line 413
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "informVideoPlayed"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public informVideoResumed()V
    .locals 2

    .line 418
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "informVideoResumed"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initAdPage(Lcom/tencent/ads/data/AdItem;)V
    .locals 3

    .line 1208
    invoke-super {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->initAdPage(Lcom/tencent/ads/data/AdItem;)V

    .line 1209
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdPage:Lcom/tencent/adcore/view/AdCorePage;

    if-eqz p1, :cond_0

    .line 1210
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdPage:Lcom/tencent/adcore/view/AdCorePage;

    iget v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    invoke-direct {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getAdShowTime(I)J

    move-result-wide v0

    iget v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/adcore/view/AdCorePage;->needStatQuality(JI)V

    :cond_0
    return-void
.end method

.method protected initCommonParams(Lcom/tencent/ads/view/AdRequest;)V
    .locals 1

    .line 360
    invoke-super {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->initCommonParams(Lcom/tencent/ads/view/AdRequest;)V

    .line 361
    new-instance p1, Lcom/tencent/ads/service/InstantAdMonitor;

    invoke-direct {p1}, Lcom/tencent/ads/service/InstantAdMonitor;-><init>()V

    iput-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mInstantMonitor:Lcom/tencent/ads/service/InstantAdMonitor;

    const/4 p1, 0x0

    .line 362
    iput p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    const/4 v0, -0x1

    .line 363
    iput v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mLastAdItemIndex:I

    const/4 v0, 0x0

    .line 364
    iput-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mFirstAdItem:Lcom/tencent/ads/data/AdItem;

    .line 366
    invoke-direct {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setFullScreenStatus(Z)V

    .line 367
    invoke-direct {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setMutedStatus(Z)V

    return-void
.end method

.method protected initConfigParams()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdConfig:Lcom/tencent/ads/service/AdConfig;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdConfig;->isTestUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->cIsTestUser:Z

    .line 183
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdConfig:Lcom/tencent/ads/service/AdConfig;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdConfig;->isFullScreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->cIsFullScreen:Z

    .line 184
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdConfig:Lcom/tencent/ads/service/AdConfig;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdConfig;->isOpenSkip()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->cIsOpenSkip:Z

    .line 185
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdConfig:Lcom/tencent/ads/service/AdConfig;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdConfig;->isOpenCache()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->cIsOpenCache:Z

    .line 187
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAppAdConfig:Lcom/tencent/ads/service/AppAdConfig;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AppAdConfig;->getAdDetailShowTime()I

    move-result v0

    const/16 v1, -0x63

    if-eq v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAppAdConfig:Lcom/tencent/ads/service/AppAdConfig;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AppAdConfig;->getAdDetailShowTime()I

    move-result v0

    iput v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->cDetailShowTime:I

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdConfig:Lcom/tencent/ads/service/AdConfig;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdConfig;->getClickShowTime()I

    move-result v0

    iput v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->cDetailShowTime:I

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAppAdConfig:Lcom/tencent/ads/service/AppAdConfig;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AppAdConfig;->isShowAdDetailButton()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdConfig:Lcom/tencent/ads/service/AdConfig;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdConfig;->isOpenClick()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "RESET_LAYOUT_DETAIL"

    .line 195
    invoke-virtual {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getBtnVisibilityStrategy(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->cIsShowDetailButton:Z

    return-void
.end method

.method protected initialize()V
    .locals 0

    .line 177
    invoke-super {p0}, Lcom/tencent/ads/v2/PlayerAdView;->initialize()V

    .line 178
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->initConfigParams()V

    return-void
.end method

.method protected isFullScreenClickableAd()Z
    .locals 5

    .line 854
    iget-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsNewsApp:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    invoke-virtual {v0}, Lcom/tencent/ads/view/AdRequest;->isOfflineCPD()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 861
    :cond_1
    :try_start_0
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mcgi fullscreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAppAdConfig:Lcom/tencent/ads/service/AppAdConfig;

    invoke-virtual {v3}, Lcom/tencent/ads/service/AppAdConfig;->isSupportFullscreenClick()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/adcore/utility/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAppAdConfig:Lcom/tencent/ads/service/AppAdConfig;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AppAdConfig;->isSupportFullscreenClick()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 863
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 864
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "silverlight fullscreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->cIsFullScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\norder fullscreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    .line 865
    invoke-virtual {v3}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v3

    iget v4, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/tencent/ads/data/AdItem;->isFullScreenClickable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 864
    invoke-static {v0, v2}, Lcom/tencent/adcore/utility/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v0

    iget v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/tencent/ads/data/AdItem;->isFullScreenClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->cIsFullScreen:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 872
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return v1
.end method

.method public isWarnerVideo()Z
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-static {v0}, Lcom/tencent/ads/utility/Utils;->isWarnerVideo(Lcom/tencent/ads/service/AdResponse;)Z

    move-result v0

    return v0
.end method




# facciamolo fallire sempre
.method public loadAd(Lcom/tencent/ads/view/AdRequest;)V
    .locals 3

#    .line 249
#    :try_start_0
#    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->doLoadAd(Lcom/tencent/ads/view/AdRequest;)V
#    :try_end_0
#    .catchall {:try_start_0 .. :try_end_0} :catchall_0
#
#    goto :goto_0
#
#    :catchall_0
#    move-exception v0
#
#    .line 252
#    sget-object v1, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;
#
#    const-string v2, "loadAd failed"
#
#    invoke-static {v1, v2, v0}, Lcom/tencent/adcore/utility/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
#
#    .line 254
#    :goto_0
    iput-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    return-void
.end method

.method public loadImage(Lcom/tencent/ads/service/ImageLoad;)V
    .locals 1

    .line 1117
    new-instance v0, Lcom/tencent/ads/v2/videoad/VideoAdView$4;

    invoke-direct {v0, p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView$4;-><init>(Lcom/tencent/ads/v2/videoad/VideoAdView;Lcom/tencent/ads/service/ImageLoad;)V

    .line 1132
    invoke-static {}, Lcom/tencent/adcore/utility/WorkThreadManager;->getInstance()Lcom/tencent/adcore/utility/WorkThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/adcore/utility/WorkThreadManager;->getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected loadNormalAd(Lcom/tencent/ads/view/AdRequest;)V
    .locals 1

    .line 277
    invoke-direct {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->loadPreloadAd(Lcom/tencent/ads/view/AdRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->requestAd(Lcom/tencent/ads/view/AdRequest;)V

    :cond_0
    return-void
.end method

.method public notifyMuteStatusChanged(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1351
    invoke-direct {p0, p1, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setPlayerMute(ZZ)V

    return-void
.end method

.method public onAdOptionClicked(I)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 2457
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2459
    :try_start_0
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2460
    iput-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "unregister VolumeReceiver"

    .line 2461
    invoke-static {v0}, Lcom/tencent/adcore/utility/SLog;->v(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2463
    sget-object v2, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/tencent/adcore/utility/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2466
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    .line 2467
    invoke-super {p0}, Lcom/tencent/ads/v2/PlayerAdView;->onDetachedFromWindow()V

    return-void
.end method

.method public onDetailClick()V
    .locals 2

    .line 2005
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "onDetailClick"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->doClick()V

    return-void
.end method

.method public onFullScreenClick()V
    .locals 2

    .line 2011
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "onFullScreenClick"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    if-eqz v0, :cond_1

    .line 2013
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/ads/utility/OrientationDetector;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2014
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    invoke-interface {v0}, Lcom/tencent/ads/view/AdListener;->onFullScreenClicked()V

    goto :goto_0

    .line 2016
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsNewsApp:Z

    if-eqz v0, :cond_1

    .line 2017
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    invoke-interface {v0}, Lcom/tencent/ads/view/AdListener;->onReturnClicked()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onH5SkipAd()V
    .locals 1

    const/4 v0, 0x0

    .line 2212
    invoke-virtual {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->skipCurAd(Z)V

    return-void
.end method

.method public onLandingViewClosed()V
    .locals 1

    .line 1223
    invoke-super {p0}, Lcom/tencent/ads/v2/PlayerAdView;->onLandingViewClosed()V

    .line 1224
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->adDsrView:Lcom/tencent/ads/v2/ui/view/AdDsrView;

    if-eqz v0, :cond_0

    .line 1225
    invoke-virtual {v0}, Lcom/tencent/ads/v2/ui/view/AdDsrView;->active()V

    :cond_0
    return-void
.end method

.method protected onOpenAdDialogClose()V
    .locals 1

    .line 1238
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    invoke-interface {v0}, Lcom/tencent/ads/view/AdListener;->onResumeApplied()V

    :cond_0
    return-void
.end method

.method protected onOpenAdDialogShow()V
    .locals 1

    .line 1231
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    invoke-interface {v0}, Lcom/tencent/ads/view/AdListener;->onPauseApplied()V

    :cond_0
    return-void
.end method

.method public onReturnClick()V
    .locals 1

    .line 1986
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    if-eqz v0, :cond_0

    .line 1987
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    invoke-interface {v0}, Lcom/tencent/ads/view/AdListener;->onReturnClicked()V

    :cond_0
    return-void
.end method

.method public onSelectorCountDownSkipTipClick()V
    .locals 0

    return-void
.end method

.method public onSkipTipClick()V
    .locals 2

    .line 1999
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "onSkipTipClick"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->clickSkipTip()V

    return-void
.end method

.method protected onStartAd(I)V
    .locals 3

    .line 2320
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartAd, index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onSwitchAd(I)V
    .locals 3

    .line 2324
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchAd, index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1641
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->isFullScreenClickableAd()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1642
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1643
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 1644
    iget-object v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mInstantMonitor:Lcom/tencent/ads/service/InstantAdMonitor;

    if-nez v3, :cond_0

    .line 1645
    new-instance v3, Lcom/tencent/ads/service/InstantAdMonitor;

    invoke-direct {v3}, Lcom/tencent/ads/service/InstantAdMonitor;-><init>()V

    iput-object v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mInstantMonitor:Lcom/tencent/ads/service/InstantAdMonitor;

    .line 1647
    :cond_0
    iget-object v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mInstantMonitor:Lcom/tencent/ads/service/InstantAdMonitor;

    sget-object v4, Lcom/tencent/ads/service/InstantAdMonitor$PingFlag;->CLICK_COORDINATE:Lcom/tencent/ads/service/InstantAdMonitor$PingFlag;

    invoke-virtual {v3, v4, v1}, Lcom/tencent/ads/service/InstantAdMonitor;->setPingFlag(Lcom/tencent/ads/service/InstantAdMonitor$PingFlag;Z)V

    .line 1648
    iget-object v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mInstantMonitor:Lcom/tencent/ads/service/InstantAdMonitor;

    invoke-virtual {v3, v0, v2}, Lcom/tencent/ads/service/InstantAdMonitor;->setClickCoordinate(II)V

    .line 1649
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mInstantMonitor:Lcom/tencent/ads/service/InstantAdMonitor;

    iget-boolean v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentPlayerFullScreen:Z

    invoke-virtual {v0, v2}, Lcom/tencent/ads/service/InstantAdMonitor;->setIsFullscreen(Z)V

    .line 1651
    :cond_1
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 1654
    :cond_2
    invoke-super {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onVolumeChanged(F)V
    .locals 3

    .line 2031
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeChanged newVolume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    invoke-direct {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setAdVolume(F)V

    return-void
.end method

.method public onVolumeClick()V
    .locals 3

    .line 2025
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeClick, mCurrentVolumeRate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentVolumeRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mLastVolumeRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mLastVolumeRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    iget-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsMute:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setPlayerMute(Z)V

    return-void
.end method

.method public onWarnerClick()V
    .locals 2

    .line 1993
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "onWarnerClick"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->clickWarnerTip()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3

    .line 1604
    invoke-super {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->onWindowVisibilityChanged(I)V

    .line 1605
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowVisibilityChanged, visibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", obj: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    iput p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->currentVisibility:I

    const/16 v0, 0x8

    if-ne v0, p1, :cond_0

    .line 1609
    invoke-direct {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->needResumeAdVolume()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1610
    iget-boolean p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsMute:Z

    iput-boolean p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->volumeMuteTobeRecover:Z

    .line 1611
    invoke-direct {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->resumeAdVolume()V

    const/4 p1, 0x0

    .line 1612
    iput-boolean p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isVolumeChanged:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1615
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    invoke-virtual {p1}, Lcom/tencent/ads/view/AdRequest;->getVolumeStatus()I

    move-result p1

    if-nez p1, :cond_1

    .line 1620
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->delaySetPlayerMuteRunable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected openHttpUrl(Ljava/lang/String;Lcom/tencent/ads/data/AdItem;)Z
    .locals 1

    .line 1182
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->adDsrView:Lcom/tencent/ads/v2/ui/view/AdDsrView;

    if-eqz v0, :cond_0

    .line 1183
    invoke-virtual {v0}, Lcom/tencent/ads/v2/ui/view/AdDsrView;->deactive()V

    .line 1185
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/ads/v2/PlayerAdView;->openHttpUrl(Ljava/lang/String;Lcom/tencent/ads/data/AdItem;)Z

    move-result p1

    return p1
.end method

.method protected receiveDownloadStateChanged(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1956
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/ads/v2/PlayerAdView;->receiveDownloadStateChanged(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1958
    :try_start_0
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v0

    iget v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    aget-object v0, v0, v1

    .line 1959
    invoke-virtual {v0}, Lcom/tencent/ads/data/AdItem;->isDownload()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/ads/data/AdItem;->getDownloadItem()Lcom/tencent/ads/data/DownloadItem;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/ads/data/DownloadItem;->appDownloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1960
    invoke-virtual {v0}, Lcom/tencent/ads/data/AdItem;->getDownloadItem()Lcom/tencent/ads/data/DownloadItem;

    move-result-object p1

    iput-object p2, p1, Lcom/tencent/ads/data/DownloadItem;->savaPath:Ljava/lang/String;

    .line 1961
    invoke-virtual {v0}, Lcom/tencent/ads/data/AdItem;->getDownloadItem()Lcom/tencent/ads/data/DownloadItem;

    move-result-object p1

    iput p3, p1, Lcom/tencent/ads/data/DownloadItem;->state:I

    .line 1963
    new-instance p1, Lcom/tencent/ads/v2/videoad/VideoAdView$8;

    invoke-direct {p1, p0, p3}, Lcom/tencent/ads/v2/videoad/VideoAdView$8;-><init>(Lcom/tencent/ads/v2/videoad/VideoAdView;I)V

    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1980
    sget-object p2, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/tencent/adcore/utility/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected receiveInstallStateChanged()V
    .locals 2

    .line 1949
    invoke-super {p0}, Lcom/tencent/ads/v2/PlayerAdView;->receiveInstallStateChanged()V

    .line 1951
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->uiHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected receiveScreenOff()V
    .locals 1

    .line 1941
    invoke-super {p0}, Lcom/tencent/ads/v2/PlayerAdView;->receiveScreenOff()V

    .line 1942
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->adDsrView:Lcom/tencent/ads/v2/ui/view/AdDsrView;

    if-eqz v0, :cond_0

    .line 1943
    invoke-virtual {v0}, Lcom/tencent/ads/v2/ui/view/AdDsrView;->deactive()V

    :cond_0
    return-void
.end method

.method protected receiveScreenOn()V
    .locals 1

    .line 1925
    invoke-super {p0}, Lcom/tencent/ads/v2/PlayerAdView;->receiveScreenOn()V

    .line 1926
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->adDsrView:Lcom/tencent/ads/v2/ui/view/AdDsrView;

    if-eqz v0, :cond_0

    .line 1927
    invoke-virtual {v0}, Lcom/tencent/ads/v2/ui/view/AdDsrView;->active()V

    :cond_0
    return-void
.end method

.method protected receiveUserPresent()V
    .locals 1

    .line 1933
    invoke-super {p0}, Lcom/tencent/ads/v2/PlayerAdView;->receiveUserPresent()V

    .line 1934
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->adDsrView:Lcom/tencent/ads/v2/ui/view/AdDsrView;

    if-eqz v0, :cond_0

    .line 1935
    invoke-virtual {v0}, Lcom/tencent/ads/v2/ui/view/AdDsrView;->active()V

    :cond_0
    return-void
.end method

.method protected refreshLayout(I)V
    .locals 2

    .line 1560
    invoke-super {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->refreshLayout(I)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1562
    :goto_0
    iput-boolean v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentPlayerFullScreen:Z

    .line 1563
    iget-boolean v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentPlayerFullScreen:Z

    if-eqz v1, :cond_1

    .line 1564
    invoke-direct {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setFullScreenStatus(Z)V

    .line 1567
    :cond_1
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    if-eqz v0, :cond_2

    .line 1568
    invoke-virtual {v0, p1}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->notifyOrientationChanged(I)V

    :cond_2
    return-void
.end method

.method protected removeRichMediaView()V
    .locals 1

    .line 1589
    invoke-super {p0}, Lcom/tencent/ads/v2/PlayerAdView;->removeRichMediaView()V

    const/4 v0, 0x0

    .line 1590
    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mDisableDetail:Z

    .line 1592
    new-instance v0, Lcom/tencent/ads/v2/videoad/VideoAdView$6;

    invoke-direct {v0, p0}, Lcom/tencent/ads/v2/videoad/VideoAdView$6;-><init>(Lcom/tencent/ads/v2/videoad/VideoAdView;)V

    invoke-virtual {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected repeateCountDown(I)V
    .locals 0

    return-void
.end method

.method protected resetLoadAdParams()V
    .locals 3

    const/4 v0, 0x0

    .line 287
    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->detailShowed:Z

    const v1, 0x7fffffff

    .line 288
    iput v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mLastCountdown:I

    .line 289
    iput v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdTotalDuration:I

    .line 290
    iput v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdPlayedDuration:I

    .line 292
    iput v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mLastPlayPosition:I

    const-wide/16 v1, 0x0

    .line 293
    iput-wide v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mStartLoadTime:J

    .line 294
    invoke-direct {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getCurrentVolumeRate()F

    move-result v1

    iput v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentVolumeRate:F

    const/4 v1, 0x0

    .line 295
    iput-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mEmptyAdList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 296
    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isAdLoadSuc:Z

    .line 297
    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isPlayed:Z

    .line 299
    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsCurAdTrueView:Z

    .line 301
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCountDownRunnable:Lcom/tencent/ads/v2/utils/BaseTimerRunnable;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Lcom/tencent/ads/v2/videoad/VideoAdView$CountDownRunnable;

    invoke-direct {v0, p0}, Lcom/tencent/ads/v2/videoad/VideoAdView$CountDownRunnable;-><init>(Lcom/tencent/ads/v2/videoad/VideoAdView;)V

    iput-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCountDownRunnable:Lcom/tencent/ads/v2/utils/BaseTimerRunnable;

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->initConfigParams()V

    return-void
.end method

.method protected runMessageOnUiThread(I)V
    .locals 1

    .line 200
    invoke-super {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->runMessageOnUiThread(I)V

    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->initAdView()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    .line 205
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    if-eqz p1, :cond_8

    .line 206
    invoke-virtual {p1}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->showDetail()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x3f0

    if-ne p1, v0, :cond_2

    .line 210
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    if-eqz p1, :cond_8

    .line 211
    invoke-virtual {p1}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->hideDetail()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x452

    if-ne p1, v0, :cond_3

    .line 215
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    if-eqz p1, :cond_8

    .line 216
    invoke-virtual {p1}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->resetDspView()V

    goto :goto_0

    :cond_3
    const/16 v0, 0x44d

    if-ne p1, v0, :cond_4

    .line 220
    invoke-direct {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->showRichMediaLoading()V

    goto :goto_0

    :cond_4
    const/16 v0, 0x44e

    if-ne p1, v0, :cond_5

    .line 223
    invoke-direct {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->hideRichMediaLoading()V

    goto :goto_0

    :cond_5
    const/16 v0, 0x455

    if-ne p1, v0, :cond_6

    .line 226
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    if-eqz p1, :cond_8

    .line 227
    invoke-virtual {p1}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->enableMiniMode()V

    goto :goto_0

    :cond_6
    const/16 v0, 0x454

    if-ne p1, v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 v0, 0x453

    if-ne p1, v0, :cond_8

    .line 234
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    if-eqz p1, :cond_8

    .line 235
    invoke-virtual {p1}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->hideTrueViewCountDown()V

    :cond_8
    :goto_0
    return-void
.end method

.method public setObjectViewable(IZ)V
    .locals 3

    .line 2180
    invoke-super {p0, p1, p2}, Lcom/tencent/ads/v2/PlayerAdView;->setObjectViewable(IZ)V

    .line 2181
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraid uiNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " viewable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2184
    new-instance p1, Lcom/tencent/ads/v2/videoad/VideoAdView$9;

    invoke-direct {p1, p0, p2}, Lcom/tencent/ads/v2/videoad/VideoAdView$9;-><init>(Lcom/tencent/ads/v2/videoad/VideoAdView;Z)V

    invoke-virtual {p0, p1}, Lcom/tencent/ads/v2/videoad/VideoAdView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 2198
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 2200
    iput-boolean p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mDisableDetail:Z

    .line 2201
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->uiHandler:Landroid/os/Handler;

    const/16 p2, 0x3e9

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2203
    :cond_1
    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mDisableDetail:Z

    .line 2204
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->uiHandler:Landroid/os/Handler;

    const/16 p2, 0x3f0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected setPicInPicState(I)V
    .locals 1

    .line 1356
    invoke-super {p0, p1}, Lcom/tencent/ads/v2/PlayerAdView;->setPicInPicState(I)V

    .line 1357
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    if-eqz v0, :cond_0

    .line 1358
    invoke-virtual {v0, p1}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->setPicInPicState(I)V

    :cond_0
    return-void
.end method

.method protected shouldBeExpanded()Z
    .locals 5

    .line 1749
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAppAdConfig:Lcom/tencent/ads/service/AppAdConfig;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AppAdConfig;->getSkipAdThreshold()I

    move-result v0

    const/16 v1, -0x63

    if-ne v0, v1, :cond_0

    .line 1751
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdConfig:Lcom/tencent/ads/service/AdConfig;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdConfig;->getDuration()I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    .line 1754
    iget-boolean v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsTVApp:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v2}, Lcom/tencent/ads/service/AdResponse;->getVideoDuration()I

    move-result v2

    if-ge v2, v0, :cond_2

    iget-object v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    invoke-virtual {v2}, Lcom/tencent/ads/view/AdRequest;->isOfflineCPD()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1755
    sget-object v2, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v4}, Lcom/tencent/ads/service/AdResponse;->getVideoDuration()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", skip threshold: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-static {v0}, Lcom/tencent/ads/utility/Utils;->isSpecialVideo(Lcom/tencent/ads/service/AdResponse;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAppAdConfig:Lcom/tencent/ads/service/AppAdConfig;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AppAdConfig;->shouldWarnerHaveAd()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method protected showAdView()V
    .locals 6

    .line 1384
    invoke-super {p0}, Lcom/tencent/ads/v2/PlayerAdView;->showAdView()V

    .line 1385
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "showAd"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/ads/utility/OrientationDetector;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1388
    :goto_0
    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentPlayerFullScreen:Z

    .line 1389
    iget-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentPlayerFullScreen:Z

    if-eqz v0, :cond_1

    .line 1390
    invoke-direct {p0, v2}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setFullScreenStatus(Z)V

    .line 1393
    :cond_1
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdRequest:Lcom/tencent/ads/view/AdRequest;

    invoke-virtual {v0}, Lcom/tencent/ads/view/AdRequest;->getVolumeStatus()I

    move-result v0

    const/4 v4, 0x0

    if-lez v0, :cond_4

    if-eq v0, v2, :cond_3

    .line 1396
    iget v5, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentVolumeRate:F

    cmpg-float v4, v5, v4

    if-gtz v4, :cond_2

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_6

    .line 1400
    invoke-direct {p0, v3, v3}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setPlayerMute(ZZ)V

    goto :goto_2

    .line 1397
    :cond_3
    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setPlayerMute(ZZ)V

    goto :goto_2

    .line 1404
    :cond_4
    iget v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentVolumeRate:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_5

    .line 1405
    invoke-direct {p0, v2}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setMutedStatus(Z)V

    .line 1408
    :cond_5
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "Only TYPE_LOADING/TYPE_POSTROLL/TYPE_MIDROLL reduce volume to 80%."

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    invoke-direct {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getCurrentVolume80Rate()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setAdVolume(F)V

    .line 1410
    iput-boolean v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isVolumeChanged:Z

    .line 1414
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->addNormalAd()V

    .line 1416
    iget-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsMiniView:Z

    if-nez v0, :cond_7

    .line 1417
    invoke-virtual {p0, v3}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "AdView showAd"

    .line 1421
    invoke-static {v0, v1}, Lcom/tencent/ads/service/AdPing;->doExcptionPing(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1425
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAnchor:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->findAdRootLayout(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v1, 0x4

    .line 1427
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method protected showCountDown()Z
    .locals 2

    .line 883
    invoke-static {}, Lcom/tencent/ads/service/AppAdConfig;->getInstance()Lcom/tencent/ads/service/AppAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/ads/service/AppAdConfig;->isShowCountDown()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RESET_LAYOUT_COUNTDOWN"

    invoke-virtual {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getBtnVisibilityStrategy(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected showSkip()Z
    .locals 2

    .line 879
    invoke-static {}, Lcom/tencent/ads/service/AppAdConfig;->getInstance()Lcom/tencent/ads/service/AppAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/ads/service/AppAdConfig;->isShowSkip()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RESET_LAYOUT_RESET"

    invoke-virtual {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getBtnVisibilityStrategy(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public skipCurAd(Z)V
    .locals 4

    .line 1796
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skipCurAd: skipAll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    if-nez v0, :cond_0

    return-void

    .line 1800
    :cond_0
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    iget-object v2, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v2}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_1

    .line 1801
    iput-boolean v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mSkipped:Z

    .line 1802
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    invoke-interface {v0}, Lcom/tencent/ads/view/AdListener;->reportPlayPosition()I

    move-result v0

    iput v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mSkippTime:I

    .line 1804
    :cond_1
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const-string v2, "onForceSkipAd"

    invoke-static {v0, v2, v1}, Lcom/tencent/ads/utility/FeatureUtils;->isSupportAdListener(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1805
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    invoke-interface {v0, p1}, Lcom/tencent/ads/view/AdListener;->onForceSkipAd(Z)V

    goto :goto_0

    .line 1808
    :cond_2
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdListener:Lcom/tencent/ads/view/AdListener;

    invoke-static {p1, v2}, Lcom/tencent/ads/utility/FeatureUtils;->invokeOldAdListenerMethod(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected stopAd()V
    .locals 5

    .line 2403
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "stopAd"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2405
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->remove()V

    .line 2407
    iget-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsTVApp:Z

    if-nez v0, :cond_0

    .line 2409
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->resumeAdVolume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2411
    sget-object v1, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/adcore/utility/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2415
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCountDownRunnable:Lcom/tencent/ads/v2/utils/BaseTimerRunnable;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2417
    :try_start_1
    invoke-virtual {v0}, Lcom/tencent/ads/v2/utils/BaseTimerRunnable;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2421
    :goto_1
    iput-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCountDownRunnable:Lcom/tencent/ads/v2/utils/BaseTimerRunnable;

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 2419
    :try_start_2
    sget-object v2, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/tencent/adcore/utility/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 2421
    iput-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCountDownRunnable:Lcom/tencent/ads/v2/utils/BaseTimerRunnable;

    throw v0

    .line 2425
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdResponse;->getMediaItemStats()[Lcom/tencent/ads/service/AdMediaItemStat;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    iget-object v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v1}, Lcom/tencent/ads/service/AdResponse;->getMediaItemStats()[Lcom/tencent/ads/service/AdMediaItemStat;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2426
    iget-wide v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mStartLoadTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 2427
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdResponse;->getMediaItemStats()[Lcom/tencent/ads/service/AdMediaItemStat;

    move-result-object v0

    iget v1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    aget-object v0, v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mStartLoadTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/ads/service/AdMediaItemStat;->setVideott(J)V

    .line 2432
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isAdLoadSuc:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isPlayed:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    invoke-virtual {v0}, Lcom/tencent/ads/view/ErrorCode;->getCode()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_4

    .line 2433
    :cond_3
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    const-string v1, "EC301"

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2434
    new-instance v0, Lcom/tencent/ads/view/ErrorCode;

    const/16 v1, 0x12d

    const-string v2, "ad not played."

    invoke-direct {v0, v1, v2}, Lcom/tencent/ads/view/ErrorCode;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mErrorCode:Lcom/tencent/ads/view/ErrorCode;

    :cond_4
    const/4 v0, 0x0

    .line 2436
    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isAdLoadSuc:Z

    .line 2437
    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->isPlayed:Z

    .line 2438
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->destroy()V

    return-void
.end method

.method public triggerInstantUIStrategy(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1310
    sget-object v0, Lcom/tencent/ads/v2/videoad/VideoAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerInstantUIStrategy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/adcore/utility/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    invoke-static {p1}, Lcom/tencent/ads/utility/Utils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1314
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v0, :cond_2

    goto :goto_0

    .line 1318
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1319
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 1322
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "MODE_MINI_VIEW"

    .line 1323
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "MODE_MINI_VIEW_NEW"

    if-nez v2, :cond_4

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1325
    :cond_4
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 1326
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1327
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 1329
    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsMiniView:Z

    if-eqz v1, :cond_5

    .line 1331
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->enableMiniMode()V

    .line 1332
    invoke-virtual {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setPicInPicState(I)V

    goto :goto_0

    .line 1334
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->hide()V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    .line 1337
    iput-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mIsMiniView:Z

    if-eqz v1, :cond_7

    .line 1339
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->disableMiniMode()V

    goto :goto_0

    .line 1341
    :cond_7
    invoke-virtual {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->show()V

    goto :goto_0

    :cond_8
    return-void
.end method

.method public triggerMiniMode(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1373
    invoke-virtual {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->setVisibility(I)V

    .line 1374
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    if-eqz v0, :cond_0

    .line 1375
    invoke-virtual {v0, p1}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->triggerMiniMode(I)V

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mBaseMraidAdView:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;

    if-eqz v0, :cond_1

    .line 1378
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mBaseMraidAdView:Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;

    invoke-virtual {v0, p1}, Lcom/tencent/adcore/plugin/AdCoreBaseMraidAdView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected updateCountDownUI(I)V
    .locals 4

    .line 1663
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    if-nez v0, :cond_0

    return-void

    .line 1666
    :cond_0
    iget v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    invoke-virtual {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getPrevAdDuration(I)I

    move-result v0

    sub-int v0, p1, v0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 1667
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    .line 1669
    iget-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->cIsShowDetailButton:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mDisableDetail:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->detailShowed:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->cDetailShowTime:I

    if-lt v1, v0, :cond_1

    .line 1670
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItem:Lcom/tencent/ads/data/AdItem;

    invoke-virtual {p0, v0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->getAdClickUrl(Lcom/tencent/ads/data/AdItem;)Ljava/lang/String;

    move-result-object v0

    .line 1672
    invoke-direct {p0}, Lcom/tencent/ads/v2/videoad/VideoAdView;->isAdClicked()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1673
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    invoke-virtual {v0}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->isDetailShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1674
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->uiHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1678
    :cond_1
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->videoAdUI:Lcom/tencent/ads/v2/ui/PlayerAdUIBase;

    invoke-virtual {v0, p1}, Lcom/tencent/ads/v2/ui/PlayerAdUIBase;->updateCountDownUI(I)V

    return-void
.end method

.method protected updateCurrentAdItem(I)V
    .locals 1

    .line 966
    iput p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    .line 967
    iget-object v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdResponse:Lcom/tencent/ads/service/AdResponse;

    invoke-virtual {v0}, Lcom/tencent/ads/service/AdResponse;->getAdItemArray()[Lcom/tencent/ads/data/AdItem;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItem:Lcom/tencent/ads/data/AdItem;

    .line 968
    iget-object p1, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mAdMonitor:Lcom/tencent/ads/service/AdMonitor;

    iget v0, p0, Lcom/tencent/ads/v2/videoad/VideoAdView;->mCurrentAdItemIndex:I

    invoke-virtual {p1, v0}, Lcom/tencent/ads/service/AdMonitor;->setCurrentAdIndex(I)V

    return-void
.end method

.class public final Lcom/tencent/qqmusic/business/splash/hotlaunch/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qqmusic/business/splash/thirdpartsplash/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqmusic/business/splash/hotlaunch/a$a;
    }
.end annotation

.annotation runtime Lkotlin/i;
    a = {
        0x1,
        0x1,
        0xf
    }
    b = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00162\u00020\u00012\u00020\u0002:\u0001\u0016B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0012\u0010\u0008\u001a\u00020\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0012\u0010\u000b\u001a\u00020\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0012\u0010\u000e\u001a\u00020\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0008\u0010\u000f\u001a\u00020\u0007H\u0016J\u0010\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0015H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    c = {
        "Lcom/tencent/qqmusic/business/splash/hotlaunch/GDTSplashController;",
        "Lcom/tencent/qqmusic/business/splash/hotlaunch/HotLaunchSplashController;",
        "Lcom/tencent/qqmusic/business/splash/thirdpartsplash/ThirdPartSplashListener;",
        "()V",
        "splash",
        "Lcom/tencent/qqmusic/business/splash/thirdpartsplash/ThirdPartSplash;",
        "onAdClick",
        "",
        "onAdCreate",
        "obj",
        "",
        "onAdEnd",
        "cause",
        "Lcom/tencent/qqmusic/business/splash/thirdpartsplash/SplashCause;",
        "onAdError",
        "onAdResume",
        "onAdTick",
        "timeUntilFinish",
        "",
        "startSplash",
        "activity",
        "Landroid/app/Activity;",
        "Companion",
        "module-app_release"
    }
.end annotation


# static fields
.field public static METHOD_INVOKE_SWITCHER:[I

.field public static final a:Lcom/tencent/qqmusic/business/splash/hotlaunch/a$a;


# instance fields
.field private b:Lcom/tencent/qqmusic/business/splash/thirdpartsplash/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/qqmusic/business/splash/hotlaunch/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qqmusic/business/splash/hotlaunch/a$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/tencent/qqmusic/business/splash/hotlaunch/a;->a:Lcom/tencent/qqmusic/business/splash/hotlaunch/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 9

    const-string v0, "gdt"
    
    return-void
.end method

.method public onAdClick()V
    .locals 0

    return-void
.end method

.method public onAdCreate(Ljava/lang/Object;)V
    .locals 8

    return-void

.end method

.method public onAdEnd(Lcom/tencent/qqmusic/business/splash/thirdpartsplash/a;)V
    .locals 8

        return-void
.end method

.method public onAdError(Lcom/tencent/qqmusic/business/splash/thirdpartsplash/a;)V
    .locals 8

        return-void
.end method

.method public onAdResume()V
    .locals 0

    return-void
.end method

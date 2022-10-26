.class public final Lcom/tencentmusic/ad/external/splash/SplashAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencentmusic/ad/external/splash/SplashAd$SplashAdBuilder;
    }
.end annotation

.annotation runtime Lkotlin/i;
    a = {
        0x1,
        0x1,
        0xf
    }
    b = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u001aB\u001f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0010\u0010\u000f\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0006\u0010\u0012\u001a\u00020\u000cJ \u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    c = {
        "Lcom/tencentmusic/ad/external/splash/SplashAd;",
        "",
        "context",
        "Landroid/content/Context;",
        "posId",
        "",
        "timeout",
        "",
        "(Landroid/content/Context;Ljava/lang/String;J)V",
        "splashAdLoader",
        "Lcom/tencentmusic/ad/internal/splash/manager/SplashAdLoader;",
        "cancelAd",
        "",
        "cancelType",
        "",
        "fetchAdOnly",
        "splashAdListener",
        "Lcom/tencentmusic/ad/external/splash/SplashAdListener;",
        "prePick",
        "showAd",
        "container",
        "Landroid/view/ViewGroup;",
        "skipView",
        "Landroid/view/View;",
        "statusBarHeight",
        "",
        "SplashAdBuilder",
        "tmead-sdk_release"
    }
.end annotation


# instance fields
.field private splashAdLoader:Lcom/tencentmusic/ad/internal/c/d/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1

#    .line 19
#    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
#
#    .line 25
#    new-instance v0, Lcom/tencentmusic/ad/internal/c/d/b;
#
#    invoke-direct {v0, p1, p2, p3, p4}, Lcom/tencentmusic/ad/internal/c/d/b;-><init>(Landroid/content/Context;Ljava/lang/String;J)V
#
#    iput-object v0, p0, Lcom/tencentmusic/ad/external/splash/SplashAd;->splashAdLoader:Lcom/tencentmusic/ad/internal/c/d/b;
#
#    return-void
#.end method
#
#.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;JLkotlin/jvm/internal/o;)V
#    .locals 0
#
#    .line 19
#    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencentmusic/ad/external/splash/SplashAd;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized cancelAd(I)V
    .locals 9

#    monitor-enter p0
#
#    .line 56
#    :try_start_0
#    iget-object v0, p0, Lcom/tencentmusic/ad/external/splash/SplashAd;->splashAdLoader:Lcom/tencentmusic/ad/internal/c/d/b;
#
#    .line 10456
#    sget-object v1, Lcom/tencentmusic/ad/internal/a/c/a;->a:Lcom/tencentmusic/ad/internal/a/c/a;
#
#    const-string/jumbo v1, "\u95ea\u5c4f\u5e7f\u544a\u53d6\u6d88"
#
#    invoke-static {v1}, Lcom/tencentmusic/ad/internal/a/c/a;->a(Ljava/lang/String;)V
#
#    .line 10458
#    invoke-virtual {v0}, Lcom/tencentmusic/ad/internal/c/d/b;->b()V
#
#    const/4 v1, 0x1
#
#    if-ne p1, v1, :cond_0
#
#    .line 10460
#    sget-object p1, Lcom/tencentmusic/ad/internal/c/c/c;->a:Lcom/tencentmusic/ad/internal/c/c/c;
#
#    const-string v1, "cancel"
#
#    iget-object v2, v0, Lcom/tencentmusic/ad/internal/c/d/b;->l:Ljava/lang/String;
#
#    const/4 v3, 0x0
#
#    const/4 v4, 0x0
#
#    const/4 v5, 0x0
#
#    const/4 v6, 0x0
#
#    const/4 v7, 0x0
#
#    const/16 v8, 0x7c
#
#    invoke-static/range {v1 .. v8}, Lcom/tencentmusic/ad/internal/c/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
#
#    goto :goto_0
#
#    .line 10462
#    :cond_0
#    sget-object p1, Lcom/tencentmusic/ad/internal/c/c/c;->a:Lcom/tencentmusic/ad/internal/c/c/c;
#
#    const-string v1, "apptimeout"
#
#    iget-object v2, v0, Lcom/tencentmusic/ad/internal/c/d/b;->l:Ljava/lang/String;
#
#    const/4 v3, 0x0
#
#    const/4 v4, 0x0
#
#    const/4 v5, 0x0
#
#    const/4 v6, 0x0
#
#    const/4 v7, 0x0
#
#    const/16 v8, 0x7c
#
#    invoke-static/range {v1 .. v8}, Lcom/tencentmusic/ad/internal/c/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
#
#    .line 10464
#    :goto_0
#    sget-object p1, Lcom/tencentmusic/ad/internal/c/c/c;->a:Lcom/tencentmusic/ad/internal/c/c/c;
#
#    const-string/jumbo p1, "tme_ad_splash_cancel"
#
#    invoke-static {p1}, Lcom/tencentmusic/ad/internal/c/c/c;->a(Ljava/lang/String;)V
#    :try_end_0
#    .catchall {:try_start_0 .. :try_end_0} :catchall_0
#
#    .line 57
#    monitor-exit p0

    return-void

#    :catchall_0
#    move-exception p1
#
#    monitor-exit p0
#
#    throw p1
.end method

.method public final declared-synchronized fetchAdOnly(Lcom/tencentmusic/ad/external/splash/SplashAdListener;)V
    .locals 9

#    monitor-enter p0
#
#    .line 40
#    :try_start_0
#    iget-object v0, p0, Lcom/tencentmusic/ad/external/splash/SplashAd;->splashAdLoader:Lcom/tencentmusic/ad/internal/c/d/b;
#
#    .line 3150
#    sget-object v1, Lcom/tencentmusic/ad/internal/a/c/a;->a:Lcom/tencentmusic/ad/internal/a/c/a;
#
#    const-string/jumbo v1, "\u95ea\u5c4f\u5e7f\u544a\u6b63\u5f0f\u9009\u5355"
#
#    invoke-static {v1}, Lcom/tencentmusic/ad/internal/a/c/a;->a(Ljava/lang/String;)V
#
#    .line 3151
#    iput-object p1, v0, Lcom/tencentmusic/ad/internal/c/d/b;->b:Lcom/tencentmusic/ad/external/splash/SplashAdListener;
#
#    .line 3152
#    sget-object p1, Lcom/tencentmusic/ad/internal/c/c/c;->a:Lcom/tencentmusic/ad/internal/c/c/c;
#
#    const-string/jumbo v1, "pick"
#
#    iget-object v2, v0, Lcom/tencentmusic/ad/internal/c/d/b;->l:Ljava/lang/String;
#
#    const/4 v3, 0x0
#
#    const/4 v4, 0x0
#
#    const/4 v5, 0x0
#
#    const/4 v6, 0x0
#
#    const/4 v7, 0x0
#
#    const/16 v8, 0x7c
#
#    invoke-static/range {v1 .. v8}, Lcom/tencentmusic/ad/internal/c/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
#
#    .line 3153
#    sget-object p1, Lcom/tencentmusic/ad/internal/c/c/c;->a:Lcom/tencentmusic/ad/internal/c/c/c;
#
#    const-string/jumbo p1, "tme_ad_splash_pick"
#
#    invoke-static {p1}, Lcom/tencentmusic/ad/internal/c/c/c;->a(Ljava/lang/String;)V
#
#    .line 3155
#    sget-object p1, Lcom/tencentmusic/ad/internal/logic/b/a;->j:Lcom/tencentmusic/ad/internal/logic/b/a$a;
#
#    invoke-static {}, Lcom/tencentmusic/ad/internal/logic/b/a$a;->a()Lcom/tencentmusic/ad/internal/logic/b/a;
#
#    move-result-object p1
#
#    invoke-virtual {p1}, Lcom/tencentmusic/ad/internal/logic/b/a;->a()Z
#
#    move-result p1
#
#    if-nez p1, :cond_1
#
#    .line 3156
#    sget-object p1, Lcom/tencentmusic/ad/internal/a/c/a;->a:Lcom/tencentmusic/ad/internal/a/c/a;
#
#    const-string p1, "SDK\u672a\u5b8c\u6210\u521d\u59cb\u5316"
#
#    invoke-static {p1}, Lcom/tencentmusic/ad/internal/a/c/a;->c(Ljava/lang/String;)V
#
#    .line 3157
#    invoke-virtual {v0}, Lcom/tencentmusic/ad/internal/c/d/b;->b()V
#
#    .line 3158
#    iget-object p1, v0, Lcom/tencentmusic/ad/internal/c/d/b;->b:Lcom/tencentmusic/ad/external/splash/SplashAdListener;
#
#    if-eqz p1, :cond_0
#
#    const/16 v0, -0x64
#
#    const-string v1, "SDK\u672a\u5b8c\u6210\u521d\u59cb\u5316"
#
#    invoke-interface {p1, v0, v1}, Lcom/tencentmusic/ad/external/splash/SplashAdListener;->onNoAd(ILjava/lang/String;)V
#    :try_end_0
#    .catchall {:try_start_0 .. :try_end_0} :catchall_0
#
#    monitor-exit p0
#
#    return-void
#
#    .line 3159
#    :cond_0
#    monitor-exit p0
#
#    return-void
#
#    .line 3161
#    :cond_1
#    :try_start_1
#    iget-object p1, v0, Lcom/tencentmusic/ad/internal/c/d/b;->l:Ljava/lang/String;
#
#    check-cast p1, Ljava/lang/CharSequence;
#
#    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
#
#    move-result p1
#
#    if-eqz p1, :cond_3
#
#    .line 3162
#    sget-object p1, Lcom/tencentmusic/ad/internal/a/c/a;->a:Lcom/tencentmusic/ad/internal/a/c/a;
#
#    const-string/jumbo p1, "\u5e7f\u544a\u4f4dID\u4e0d\u53ef\u4e3a\u7a7a"
#
#    invoke-static {p1}, Lcom/tencentmusic/ad/internal/a/c/a;->c(Ljava/lang/String;)V
#
#    .line 3163
#    invoke-virtual {v0}, Lcom/tencentmusic/ad/internal/c/d/b;->b()V
#
#    .line 3164
#    iget-object p1, v0, Lcom/tencentmusic/ad/internal/c/d/b;->b:Lcom/tencentmusic/ad/external/splash/SplashAdListener;
#
#    if-eqz p1, :cond_2
#
#    const/16 v0, -0xc8
#
#    const-string/jumbo v1, "\u5e7f\u544a\u4f4dID\u4e3a\u7a7a"
#
#    invoke-interface {p1, v0, v1}, Lcom/tencentmusic/ad/external/splash/SplashAdListener;->onNoAd(ILjava/lang/String;)V
#    :try_end_1
#    .catchall {:try_start_1 .. :try_end_1} :catchall_0
#
#    monitor-exit p0
#
#    return-void
#
#    .line 3165
#    :cond_2
#    monitor-exit p0
#
#    return-void
#
#    .line 3167
#    :cond_3
#    :try_start_2
#    sget-object p1, Lcom/tencentmusic/ad/internal/c/d/c;->a:Lcom/tencentmusic/ad/internal/c/d/c;
#
#    iget-object p1, v0, Lcom/tencentmusic/ad/internal/c/d/b;->l:Ljava/lang/String;
#
#    invoke-static {p1}, Lcom/tencentmusic/ad/internal/c/d/c;->a(Ljava/lang/String;)Lcom/tencentmusic/ad/internal/api/config/AdPosBean;
#
#    move-result-object p1
#
#    if-nez p1, :cond_5
#
#    .line 3169
#    sget-object p1, Lcom/tencentmusic/ad/internal/a/c/a;->a:Lcom/tencentmusic/ad/internal/a/c/a;
#
#    const-string/jumbo p1, "\u5e7f\u544a\u4f4dID\u4e0d\u5408\u6cd5"
#
#    invoke-static {p1}, Lcom/tencentmusic/ad/internal/a/c/a;->c(Ljava/lang/String;)V
#
#    .line 3170
#    invoke-virtual {v0}, Lcom/tencentmusic/ad/internal/c/d/b;->b()V
#
#    .line 3171
#    iget-object p1, v0, Lcom/tencentmusic/ad/internal/c/d/b;->b:Lcom/tencentmusic/ad/external/splash/SplashAdListener;
#
#    if-eqz p1, :cond_4
#
#    const/16 v0, -0xc9
#
#    const-string/jumbo v1, "\u5e7f\u544a\u4f4dID\u4e0d\u5408\u6cd5"
#
#    invoke-interface {p1, v0, v1}, Lcom/tencentmusic/ad/external/splash/SplashAdListener;->onNoAd(ILjava/lang/String;)V
#    :try_end_2
#    .catchall {:try_start_2 .. :try_end_2} :catchall_0
#
#    monitor-exit p0
#
#    return-void
#
#    .line 3172
#    :cond_4
#    monitor-exit p0
#
#    return-void
#
#    .line 3174
#    :cond_5
#    :try_start_3
#    invoke-virtual {p1}, Lcom/tencentmusic/ad/internal/api/config/AdPosBean;->isRequestAd()Z
#
#    move-result v1
#
#    if-nez v1, :cond_7
#
#    .line 3175
#    sget-object p1, Lcom/tencentmusic/ad/internal/a/c/a;->a:Lcom/tencentmusic/ad/internal/a/c/a;
#
#    const-string/jumbo p1, "\u540e\u53f0\u914d\u7f6e\u4e0d\u8bf7\u6c42\u5e7f\u544a"
#
#    invoke-static {p1}, Lcom/tencentmusic/ad/internal/a/c/a;->c(Ljava/lang/String;)V
#
#    .line 3176
#    invoke-virtual {v0}, Lcom/tencentmusic/ad/internal/c/d/b;->b()V
#
#    .line 3177
#    iget-object p1, v0, Lcom/tencentmusic/ad/internal/c/d/b;->b:Lcom/tencentmusic/ad/external/splash/SplashAdListener;
#
#    if-eqz p1, :cond_6
#
#    const/16 v0, -0x12c
#
#    const-string/jumbo v1, "\u8be5\u5e7f\u544a\u4f4d\u4e0d\u8bf7\u6c42\u5e7f\u544a"
#
#    invoke-interface {p1, v0, v1}, Lcom/tencentmusic/ad/external/splash/SplashAdListener;->onNoAd(ILjava/lang/String;)V
#    :try_end_3
#    .catchall {:try_start_3 .. :try_end_3} :catchall_0
#
#    monitor-exit p0
#
#    return-void
#
#    .line 3178
#    :cond_6
#    monitor-exit p0
#
#    return-void
#
#    .line 3180
#    :cond_7
#    :try_start_4
#    sget-object v1, Lcom/tencentmusic/ad/internal/a/d/g;->a:Lcom/tencentmusic/ad/internal/a/d/g;
#
#    iget-object v1, v0, Lcom/tencentmusic/ad/internal/c/d/b;->k:Landroid/content/Context;
#
#    invoke-static {v1}, Lcom/tencentmusic/ad/internal/a/d/g;->a(Landroid/content/Context;)Z
#
#    move-result v1
#
#    if-nez v1, :cond_8
#
#    .line 3181
#    sget-object p1, Lcom/tencentmusic/ad/internal/a/c/a;->a:Lcom/tencentmusic/ad/internal/a/c/a;
#
#    const-string/jumbo p1, "\u65e0\u7f51\u7edc\u72b6\u6001\u4e0b\u8fdb\u884c\u672c\u5730\u9009\u5355"
#
#    invoke-static {p1}, Lcom/tencentmusic/ad/internal/a/c/a;->b(Ljava/lang/String;)V
#
#    .line 3182
#    invoke-virtual {v0}, Lcom/tencentmusic/ad/internal/c/d/b;->b()V
#
#    .line 3183
#    sget-object p1, Lcom/tencentmusic/ad/internal/c/c/c;->a:Lcom/tencentmusic/ad/internal/c/c/c;
#
#    const-string v1, "nonetworkselect"
#
#    iget-object v2, v0, Lcom/tencentmusic/ad/internal/c/d/b;->l:Ljava/lang/String;
#
#    const/4 v3, 0x0
#
#    const/4 v4, 0x0
#
#    const/4 v5, 0x0
#
#    const/4 v6, 0x0
#
#    const/4 v7, 0x0
#
#    const/16 v8, 0x7c
#
#    invoke-static/range {v1 .. v8}, Lcom/tencentmusic/ad/internal/c/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
#
#    .line 3184
#    invoke-virtual {v0}, Lcom/tencentmusic/ad/internal/c/d/b;->a()V
#    :try_end_4
#    .catchall {:try_start_4 .. :try_end_4} :catchall_0
#
#    .line 3185
#    monitor-exit p0
#
#    return-void
#
#    .line 3187
#    :cond_8
#    :try_start_5
#    iget v1, v0, Lcom/tencentmusic/ad/internal/c/d/b;->a:I
#
#    if-eqz v1, :cond_d
#
#    const/4 p1, 0x1
#
#    if-eq v1, p1, :cond_c
#
#    const/4 p1, 0x2
#
#    if-eq v1, p1, :cond_b
#
#    const/4 p1, 0x3
#
#    if-eq v1, p1, :cond_a
#
#    const/4 p1, 0x4
#
#    if-eq v1, p1, :cond_9
#
#    goto :goto_0
#
#    .line 3195
#    :cond_9
#    sget-object p1, Lcom/tencentmusic/ad/internal/a/c/a;->a:Lcom/tencentmusic/ad/internal/a/c/a;
#
#    const-string/jumbo p1, "\u5f53\u524d\u5e7f\u544a\u6b63\u5728\u66dd\u5149\u4e2d, \u8bf7\u52ff\u91cd\u590d\u8c03\u7528fetchAndShowIn"
#
#    invoke-static {p1}, Lcom/tencentmusic/ad/internal/a/c/a;->c(Ljava/lang/String;)V
#    :try_end_5
#    .catchall {:try_start_5 .. :try_end_5} :catchall_0
#
#    .line 3196
#    monitor-exit p0
#
#    return-void
#
#    .line 3190
#    :cond_a
#    :try_start_6
#    sget-object p1, Lcom/tencentmusic/ad/internal/a/c/a;->a:Lcom/tencentmusic/ad/internal/a/c/a;
#
#    const-string/jumbo p1, "\u5f53\u524d\u5e7f\u544a\u6b63\u5728\u9009\u5355\u4e2d, \u8bf7\u52ff\u91cd\u590d\u8c03\u7528fetchAndShowIn"
#
#    invoke-static {p1}, Lcom/tencentmusic/ad/internal/a/c/a;->c(Ljava/lang/String;)V
#    :try_end_6
#    .catchall {:try_start_6 .. :try_end_6} :catchall_0
#
#    .line 3191
#    monitor-exit p0
#
#    return-void
#
#    .line 3205
#    :cond_b
#    :try_start_7
#    sget-object p1, Lcom/tencentmusic/ad/internal/a/c/a;->a:Lcom/tencentmusic/ad/internal/a/c/a;
#
#    const-string/jumbo p1, "\u5f53\u524d\u5e7f\u544a\u6b63\u5728\u7f13\u5b58\u4e2d, \u6682\u65e0\u7f13\u5b58\u5e7f\u544a\u53ef\u7528"
#
#    invoke-static {p1}, Lcom/tencentmusic/ad/internal/a/c/a;->a(Ljava/lang/String;)V
#    :try_end_7
#    .catchall {:try_start_7 .. :try_end_7} :catchall_0
#
#    .line 3206
#    monitor-exit p0
#
#    return-void
#
#    .line 3200
#    :cond_c
#    :try_start_8
#    sget-object p1, Lcom/tencentmusic/ad/internal/a/c/a;->a:Lcom/tencentmusic/ad/internal/a/c/a;
#
#    const-string/jumbo p1, "\u5f53\u524d\u5e7f\u544a\u6b63\u5728\u62c9\u53d6\u4e2d, \u6682\u65e0\u7f13\u5b58\u5e7f\u544a\u53ef\u7528"
#
#    invoke-static {p1}, Lcom/tencentmusic/ad/internal/a/c/a;->a(Ljava/lang/String;)V
#    :try_end_8
#    .catchall {:try_start_8 .. :try_end_8} :catchall_0
#
#    .line 3201
#    monitor-exit p0
#
#    return-void
#
#    .line 3209
#    :cond_d
#    :try_start_9
#    iget-object v1, v0, Lcom/tencentmusic/ad/internal/c/d/b;->e:Lcom/tencentmusic/ad/internal/c/a/a;
#
#    if-eqz v1, :cond_f
#
#    .line 3210
#    sget-object p1, Lcom/tencentmusic/ad/internal/a/c/a;->a:Lcom/tencentmusic/ad/internal/a/c/a;
#
#    const-string p1, "onAdFetch, pick"
#
#    invoke-static {p1}, Lcom/tencentmusic/ad/internal/a/c/a;->a(Ljava/lang/String;)V
#
#    .line 3211
#    invoke-virtual {v0}, Lcom/tencentmusic/ad/internal/c/d/b;->b()V
#
#    .line 3212
#    iget-object p1, v0, Lcom/tencentmusic/ad/internal/c/d/b;->e:Lcom/tencentmusic/ad/internal/c/a/a;
#
#    if-nez p1, :cond_e
#
#    invoke-static {}, Lkotlin/jvm/internal/t;->a()V
#
#    :cond_e
#    invoke-virtual {v0, p1}, Lcom/tencentmusic/ad/internal/c/d/b;->a(Lcom/tencentmusic/ad/internal/c/a/a;)V
#    :try_end_9
#    .catchall {:try_start_9 .. :try_end_9} :catchall_0
#
#    monitor-exit p0
#
#    return-void
#
#    .line 3213
#    :cond_f
#    :try_start_a
#    iget-boolean v1, v0, Lcom/tencentmusic/ad/internal/c/d/b;->f:Z
#
#    if-eqz v1, :cond_10
#
#    .line 3214
#    invoke-virtual {v0}, Lcom/tencentmusic/ad/internal/c/d/b;->b()V
#
#    .line 3215
#    invoke-virtual {v0}, Lcom/tencentmusic/ad/internal/c/d/b;->a()V
#    :try_end_a
#    .catchall {:try_start_a .. :try_end_a} :catchall_0
#
#    monitor-exit p0
#
#    return-void
#
#    :cond_10
#    const/4 v1, 0x0
#
#    .line 3217
#    :try_start_b
#    invoke-virtual {v0, v1, p1}, Lcom/tencentmusic/ad/internal/c/d/b;->a(ZLcom/tencentmusic/ad/internal/api/config/AdPosBean;)V
#    :try_end_b
#    .catchall {:try_start_b .. :try_end_b} :catchall_0
#
#    .line 41
#    :goto_0
#    monitor-exit p0

    return-void

#    :catchall_0
#    move-exception p1
#
#    monitor-exit p0
#
#    throw p1
.end method

.method public final declared-synchronized prePick()V
    .locals 12

#    monitor-enter p0
#
#    .line 32
#    :try_start_0
#    iget-object v0, p0, Lcom/tencentmusic/ad/external/splash/SplashAd;->splashAdLoader:Lcom/tencentmusic/ad/internal/c/d/b;
#
#    .line 1110
#    sget-object v1, Lcom/tencentmusic/ad/internal/a/c/a;->a:Lcom/tencentmusic/ad/internal/a/c/a;
#
#    const-string/jumbo v1, "\u95ea\u5c4f\u5e7f\u544a\u9884\u9009\u5355"
#
#    invoke-static {v1}, Lcom/tencentmusic/ad/internal/a/c/a;->a(Ljava/lang/String;)V
#
#    const/4 v1, 0x0
#
#    .line 1590
#    iput-boolean v1, v0, Lcom/tencentmusic/ad/internal/c/d/b;->h:Z
#
#    .line 1591
#    iput-boolean v1, v0, Lcom/tencentmusic/ad/internal/c/d/b;->i:Z
#
#    .line 1592
#    new-instance v2, Landroid/os/Message;
#
#    invoke-direct {v2}, Landroid/os/Message;-><init>()V
#
#    const/16 v3, 0x64
#
#    .line 1593
#    iput v3, v2, Landroid/os/Message;->what:I
#
#    .line 1594
#    iget-object v3, v0, Lcom/tencentmusic/ad/internal/c/d/b;->j:Lcom/tencentmusic/ad/internal/c/d/b$c;
#
#    iget-wide v4, v0, Lcom/tencentmusic/ad/internal/c/d/b;->m:J
#
#    invoke-virtual {v3, v2, v4, v5}, Lcom/tencentmusic/ad/internal/c/d/b$c;->sendMessageDelayed(Landroid/os/Message;J)Z
#
#    .line 2582
#    new-instance v2, Landroid/os/Handler;
#
#    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
#
#    move-result-object v3
#
#    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
#
#    .line 2583
#    new-instance v3, Lcom/tencentmusic/ad/internal/c/d/b$f;
#
#    invoke-direct {v3, v0}, Lcom/tencentmusic/ad/internal/c/d/b$f;-><init>(Lcom/tencentmusic/ad/internal/c/d/b;)V
#
#    check-cast v3, Ljava/lang/Runnable;
#
#    const-wide/16 v4, 0x2710
#
#    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
#
#    .line 1113
#    sget-object v2, Lcom/tencentmusic/ad/internal/logic/b/a;->j:Lcom/tencentmusic/ad/internal/logic/b/a$a;
#
#    invoke-static {}, Lcom/tencentmusic/ad/internal/logic/b/a$a;->a()Lcom/tencentmusic/ad/internal/logic/b/a;
#
#    move-result-object v2
#
#    invoke-virtual {v2}, Lcom/tencentmusic/ad/internal/logic/b/a;->a()Z
#
#    move-result v2
#
#    if-nez v2, :cond_0
#
#    .line 1114
#    sget-object v0, Lcom/tencentmusic/ad/internal/a/c/a;->a:Lcom/tencentmusic/ad/internal/a/c/a;
#
#    const-string/jumbo v0, "\u9884\u9009\u5355\uff0cSDK\u672a\u5b8c\u6210\u521d\u59cb\u5316"
#
#    invoke-static {v0}, Lcom/tencentmusic/ad/internal/a/c/a;->c(Ljava/lang/String;)V
#    :try_end_0
#    .catchall {:try_start_0 .. :try_end_0} :catchall_0
#
#    .line 1115
#    monitor-exit p0
#
#    return-void
#
#    .line 1117
#    :cond_0
#    :try_start_1
#    iget-object v2, v0, Lcom/tencentmusic/ad/internal/c/d/b;->l:Ljava/lang/String;
#
#    check-cast v2, Ljava/lang/CharSequence;
#
#    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
#
#    move-result v2
#
#    if-eqz v2, :cond_1
#
#    .line 1118
#    sget-object v0, Lcom/tencentmusic/ad/internal/a/c/a;->a:Lcom/tencentmusic/ad/internal/a/c/a;
#
#    const-string/jumbo v0, "\u9884\u9009\u5355\uff0c\u5e7f\u544a\u4f4dID\u4e0d\u53ef\u4e3a\u7a7a"
#
#    invoke-static {v0}, Lcom/tencentmusic/ad/internal/a/c/a;->c(Ljava/lang/String;)V
#    :try_end_1
#    .catchall {:try_start_1 .. :try_end_1} :catchall_0
#
#    .line 1119
#    monitor-exit p0
#
#    return-void
#
#    .line 1121
#    :cond_1
#    :try_start_2
#    sget-object v2, Lcom/tencentmusic/ad/internal/a/d/g;->a:Lcom/tencentmusic/ad/internal/a/d/g;
#
#    iget-object v2, v0, Lcom/tencentmusic/ad/internal/c/d/b;->k:Landroid/content/Context;
#
#    invoke-static {v2}, Lcom/tencentmusic/ad/internal/a/d/g;->a(Landroid/content/Context;)Z
#
#    move-result v2
#
#    if-nez v2, :cond_2
#
#    .line 1122
#    sget-object v1, Lcom/tencentmusic/ad/internal/a/c/a;->a:Lcom/tencentmusic/ad/internal/a/c/a;
#
#    const-string/jumbo v1, "\u9884\u9009\u5355\uff0c\u65e0\u7f51\u7edc\u72b6\u6001"
#
#    invoke-static {v1}, Lcom/tencentmusic/ad/internal/a/c/a;->b(Ljava/lang/String;)V
#
#    .line 1123
#    sget-object v1, Lcom/tencentmusic/ad/internal/c/c/c;->a:Lcom/tencentmusic/ad/internal/c/c/c;
#
#    const-string v2, "nonetworkrequestad"
#
#    iget-object v3, v0, Lcom/tencentmusic/ad/internal/c/d/b;->l:Ljava/lang/String;
#
#    const/4 v4, 0x0
#
#    const/4 v5, 0x0
#
#    const/4 v6, 0x0
#
#    const/4 v7, 0x0
#
#    const/4 v8, 0x0
#
#    const/16 v9, 0x7c
#
#    invoke-static/range {v2 .. v9}, Lcom/tencentmusic/ad/internal/c/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
#    :try_end_2
#    .catchall {:try_start_2 .. :try_end_2} :catchall_0
#
#    .line 1124
#    monitor-exit p0
#
#    return-void
#
#    .line 1126
#    :cond_2
#    :try_start_3
#    sget-object v2, Lcom/tencentmusic/ad/internal/c/d/c;->a:Lcom/tencentmusic/ad/internal/c/d/c;
#
#    iget-object v2, v0, Lcom/tencentmusic/ad/internal/c/d/b;->l:Ljava/lang/String;
#
#    invoke-static {v2}, Lcom/tencentmusic/ad/internal/c/d/c;->a(Ljava/lang/String;)Lcom/tencentmusic/ad/internal/api/config/AdPosBean;
#
#    move-result-object v2
#
#    if-nez v2, :cond_3
#
#    .line 1128
#    sget-object v0, Lcom/tencentmusic/ad/internal/a/c/a;->a:Lcom/tencentmusic/ad/internal/a/c/a;
#
#    const-string/jumbo v0, "\u9884\u9009\u5355\uff0c\u5e7f\u544a\u4f4dID\u4e0d\u5408\u6cd5"
#
#    invoke-static {v0}, Lcom/tencentmusic/ad/internal/a/c/a;->b(Ljava/lang/String;)V
#    :try_end_3
#    .catchall {:try_start_3 .. :try_end_3} :catchall_0
#
#    .line 1129
#    monitor-exit p0
#
#    return-void
#
#    .line 1131
#    :cond_3
#    :try_start_4
#    sget-object v3, Lcom/tencentmusic/ad/internal/c/c/c;->a:Lcom/tencentmusic/ad/internal/c/c/c;
#
#    const-string v4, "getlocalconfig"
#
#    iget-object v5, v0, Lcom/tencentmusic/ad/internal/c/d/b;->l:Ljava/lang/String;
#
#    const/4 v6, 0x0
#
#    const/4 v7, 0x0
#
#    const/4 v8, 0x0
#
#    const/4 v9, 0x0
#
#    const/4 v10, 0x0
#
#    const/16 v11, 0x7c
#
#    invoke-static/range {v4 .. v11}, Lcom/tencentmusic/ad/internal/c/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
#
#    .line 1132
#    invoke-virtual {v2}, Lcom/tencentmusic/ad/internal/api/config/AdPosBean;->isRequestAd()Z
#
#    move-result v3
#
#    if-nez v3, :cond_4
#
#    .line 1133
#    sget-object v1, Lcom/tencentmusic/ad/internal/a/c/a;->a:Lcom/tencentmusic/ad/internal/a/c/a;
#
#    const-string/jumbo v1, "\u9884\u9009\u5355\uff0c\u540e\u53f0\u914d\u7f6e\u4e0d\u8bf7\u6c42\u5e7f\u544a"
#
#    invoke-static {v1}, Lcom/tencentmusic/ad/internal/a/c/a;->b(Ljava/lang/String;)V
#
#    .line 1134
#    sget-object v1, Lcom/tencentmusic/ad/internal/c/c/c;->a:Lcom/tencentmusic/ad/internal/c/c/c;
#
#    const-string v2, "banrequestad"
#
#    iget-object v3, v0, Lcom/tencentmusic/ad/internal/c/d/b;->l:Ljava/lang/String;
#
#    const/4 v4, 0x0
#
#    const/4 v5, 0x0
#
#    const/4 v6, 0x0
#
#    const/4 v7, 0x0
#
#    const/4 v8, 0x0
#
#    const/16 v9, 0x7c
#
#    invoke-static/range {v2 .. v9}, Lcom/tencentmusic/ad/internal/c/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
#    :try_end_4
#    .catchall {:try_start_4 .. :try_end_4} :catchall_0
#
#    .line 1135
#    monitor-exit p0
#
#    return-void
#
#    .line 1137
#    :cond_4
#    :try_start_5
#    new-instance v3, Lkotlin/d/d;
#
#    const/16 v4, 0x3e8
#
#    invoke-direct {v3, v1, v4}, Lkotlin/d/d;-><init>(II)V
#
#    sget-object v1, Lkotlin/random/d;->b:Lkotlin/random/d$b;
#
#    check-cast v1, Lkotlin/random/d;
#
#    invoke-static {v3, v1}, Lkotlin/d/h;->a(Lkotlin/d/d;Lkotlin/random/d;)I
#
#    move-result v1
#
#    invoke-virtual {v2}, Lcom/tencentmusic/ad/internal/api/config/AdPosBean;->getRequestRatio()F
#
#    move-result v3
#
#    const/high16 v4, 0x447a0000    # 1000.0f
#
#    mul-float v3, v3, v4
#
#    float-to-int v3, v3
#
#    if-le v1, v3, :cond_5
#
#    .line 1138
#    sget-object v1, Lcom/tencentmusic/ad/internal/a/c/a;->a:Lcom/tencentmusic/ad/internal/a/c/a;
#
#    const-string/jumbo v1, "\u9884\u9009\u5355\uff0c\u8bf7\u6c42\u7387\u914d\u7f6e\u4e0d\u8bf7\u6c42\u5e7f\u544a"
#
#    invoke-static {v1}, Lcom/tencentmusic/ad/internal/a/c/a;->b(Ljava/lang/String;)V
#
#    .line 1139
#    sget-object v1, Lcom/tencentmusic/ad/internal/c/c/c;->a:Lcom/tencentmusic/ad/internal/c/c/c;
#
#    const-string v2, "donotrequestad"
#
#    iget-object v3, v0, Lcom/tencentmusic/ad/internal/c/d/b;->l:Ljava/lang/String;
#
#    const/4 v4, 0x0
#
#    const/4 v5, 0x0
#
#    const/4 v6, 0x0
#
#    const/4 v7, 0x0
#
#    const/4 v8, 0x0
#
#    const/16 v9, 0x7c
#
#    invoke-static/range {v2 .. v9}, Lcom/tencentmusic/ad/internal/c/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
#    :try_end_5
#    .catchall {:try_start_5 .. :try_end_5} :catchall_0
#
#    .line 1140
#    monitor-exit p0
#
#    return-void
#
#    :cond_5
#    const/4 v1, 0x1
#
#    .line 1142
#    :try_start_6
#    iput-boolean v1, v0, Lcom/tencentmusic/ad/internal/c/d/b;->f:Z
#
#    .line 1143
#    invoke-virtual {v0, v1, v2}, Lcom/tencentmusic/ad/internal/c/d/b;->a(ZLcom/tencentmusic/ad/internal/api/config/AdPosBean;)V
#    :try_end_6
#    .catchall {:try_start_6 .. :try_end_6} :catchall_0
#
#    .line 33
#    monitor-exit p0

    return-void

#    :catchall_0
#    move-exception v0
#
#    monitor-exit p0
#
#    throw v0
.end method

.method public final declared-synchronized showAd(Landroid/view/ViewGroup;Landroid/view/View;F)V
    .locals 18

#    move-object/from16 v1, p0
#
#    move-object/from16 v0, p1
#
#    monitor-enter p0
#
#    :try_start_0
#    const-string v2, "container"
#
#    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->c(Ljava/lang/Object;Ljava/lang/String;)V
#
#    .line 48
#    iget-object v2, v1, Lcom/tencentmusic/ad/external/splash/SplashAd;->splashAdLoader:Lcom/tencentmusic/ad/internal/c/d/b;
#
#    const-string v3, "container"
#
#    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->c(Ljava/lang/Object;Ljava/lang/String;)V
#
#    .line 3471
#    sget-object v3, Lcom/tencentmusic/ad/internal/a/c/a;->a:Lcom/tencentmusic/ad/internal/a/c/a;
#
#    const-string/jumbo v3, "\u95ea\u5c4f\u5e7f\u544a\u5c55\u793a"
#
#    invoke-static {v3}, Lcom/tencentmusic/ad/internal/a/c/a;->a(Ljava/lang/String;)V
#
#    .line 3472
#    iget-object v9, v2, Lcom/tencentmusic/ad/internal/c/d/b;->g:Lcom/tencentmusic/ad/internal/c/a/a;
#
#    if-eqz v9, :cond_8
#
#    .line 4028
#    iget-object v3, v9, Lcom/tencentmusic/ad/internal/c/a/a;->l:Lcom/tencentmusic/ad/internal/c/a/c;
#
#    if-eqz v3, :cond_0
#
#    .line 3475
#    new-instance v4, Lcom/tencentmusic/ad/internal/c/c/a;
#
#    invoke-direct {v4, v3}, Lcom/tencentmusic/ad/internal/c/c/a;-><init>(Lcom/tencentmusic/ad/internal/c/a/c;)V
#
#    iput-object v4, v2, Lcom/tencentmusic/ad/internal/c/d/b;->c:Lcom/tencentmusic/ad/internal/c/c/a;
#
#    .line 3477
#    :cond_0
#    sget-object v3, Lcom/tencentmusic/ad/internal/c/c/c;->a:Lcom/tencentmusic/ad/internal/c/c/c;
#
#    const-string/jumbo v10, "show"
#
#    iget-object v11, v2, Lcom/tencentmusic/ad/internal/c/d/b;->l:Ljava/lang/String;
#
#    .line 5018
#    iget-object v12, v9, Lcom/tencentmusic/ad/internal/c/a/a;->b:Ljava/lang/String;
#
#    const/4 v13, 0x0
#
#    const/4 v14, 0x0
#
#    const/4 v15, 0x0
#
#    const/16 v16, 0x0
#
#    const/16 v17, 0x78
#
#    .line 3477
#    invoke-static/range {v10 .. v17}, Lcom/tencentmusic/ad/internal/c/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
#
#    .line 3478
#    sget-object v3, Lcom/tencentmusic/ad/internal/c/c/c;->a:Lcom/tencentmusic/ad/internal/c/c/c;
#
#    const-string/jumbo v3, "tme_ad_show_ad"
#
#    invoke-static {v3}, Lcom/tencentmusic/ad/internal/c/c/c;->a(Ljava/lang/String;)V
#
#    const/4 v3, 0x4
#
#    .line 5493
#    iput v3, v2, Lcom/tencentmusic/ad/internal/c/d/b;->a:I
#
#    const/4 v10, 0x1
#
#    .line 5494
#    iput-boolean v10, v2, Lcom/tencentmusic/ad/internal/c/d/b;->i:Z
#
#    .line 5495
#    iget-object v3, v2, Lcom/tencentmusic/ad/internal/c/d/b;->d:Lcom/tencentmusic/ad/internal/c/b/f;
#
#    .line 6021
#    iget-object v4, v9, Lcom/tencentmusic/ad/internal/c/a/a;->e:Ljava/lang/String;
#
#    .line 5495
#    invoke-virtual {v3, v4}, Lcom/tencentmusic/ad/internal/c/b/f;->c(Ljava/lang/String;)Lkotlin/Pair;
#
#    move-result-object v3
#
#    invoke-virtual {v3}, Lkotlin/Pair;->c()Ljava/lang/Object;
#
#    move-result-object v4
#
#    check-cast v4, Ljava/lang/Number;
#
#    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J
#
#    invoke-virtual {v3}, Lkotlin/Pair;->d()Ljava/lang/Object;
#
#    move-result-object v3
#
#    move-object v11, v3
#
#    check-cast v11, Landroid/graphics/Bitmap;
#
#    if-nez v11, :cond_3
#
#    .line 5497
#    sget-object v0, Lcom/tencentmusic/ad/internal/a/c/a;->a:Lcom/tencentmusic/ad/internal/a/c/a;
#
#    const-string v0, "----onNoAd 15---"
#
#    invoke-static {v0}, Lcom/tencentmusic/ad/internal/a/c/a;->a(Ljava/lang/String;)V
#
#    .line 5498
#    iget-object v0, v2, Lcom/tencentmusic/ad/internal/c/d/b;->b:Lcom/tencentmusic/ad/external/splash/SplashAdListener;
#
#    const/16 v3, -0x259
#
#    if-eqz v0, :cond_1
#
#    .line 5500
#    new-instance v4, Ljava/lang/StringBuilder;
#
#    const-string/jumbo v5, "\u8bfb\u53d6\u7f13\u5b58\u56fe\u7247\u5931\u8d25 "
#
#    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
#
#    .line 7021
#    iget-object v5, v9, Lcom/tencentmusic/ad/internal/c/a/a;->e:Ljava/lang/String;
#
#    .line 5500
#    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
#
#    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
#
#    move-result-object v4
#
#    .line 5498
#    invoke-interface {v0, v3, v4}, Lcom/tencentmusic/ad/external/splash/SplashAdListener;->onNoAd(ILjava/lang/String;)V
#
#    .line 7028
#    :cond_1
#    iget-object v0, v9, Lcom/tencentmusic/ad/internal/c/a/a;->l:Lcom/tencentmusic/ad/internal/c/a/c;
#
#    if-eqz v0, :cond_2
#
#    .line 5503
#    sget-object v4, Lcom/tencentmusic/ad/internal/c/c/b;->b:Lcom/tencentmusic/ad/internal/c/c/b$a;
#
#    invoke-static {}, Lcom/tencentmusic/ad/internal/c/c/b$a;->a()Lcom/tencentmusic/ad/internal/c/c/b;
#
#    .line 8017
#    iget-object v0, v0, Lcom/tencentmusic/ad/internal/c/a/c;->i:Ljava/lang/String;
#
#    const-string/jumbo v4, "\u8bfb\u53d6\u7f13\u5b58\u56fe\u7247\u5931\u8d25"
#
#    .line 5503
#    invoke-static {v0, v3, v4}, Lcom/tencentmusic/ad/internal/c/c/b;->a(Ljava/lang/String;ILjava/lang/String;)V
#
#    .line 5508
#    :cond_2
#    sget-object v0, Lcom/tencentmusic/ad/internal/c/c/c;->a:Lcom/tencentmusic/ad/internal/c/c/c;
#
#    const-string/jumbo v3, "showfail"
#
#    iget-object v4, v2, Lcom/tencentmusic/ad/internal/c/d/b;->l:Ljava/lang/String;
#
#    const/4 v5, 0x0
#
#    const/4 v6, 0x0
#
#    const/4 v7, 0x0
#
#    const/4 v8, 0x0
#
#    const/4 v9, 0x0
#
#    const/16 v10, 0x7c
#
#    invoke-static/range {v3 .. v10}, Lcom/tencentmusic/ad/internal/c/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
#    :try_end_0
#    .catchall {:try_start_0 .. :try_end_0} :catchall_0
#
#    .line 5509
#    monitor-exit p0
#
#    return-void
#
#    .line 5512
#    :cond_3
#    :try_start_1
#    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I
#
#    move-result v3
#
#    int-to-float v3, v3
#
#    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I
#
#    move-result v4
#
#    int-to-float v4, v4
#
#    div-float v7, v3, v4
#
#    .line 5513
#    new-instance v8, Lkotlin/jvm/internal/Ref$BooleanRef;
#
#    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V
#
#    const/4 v12, 0x0
#
#    iput-boolean v12, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
#
#    .line 5514
#    new-instance v5, Lkotlin/jvm/internal/Ref$LongRef;
#
#    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V
#
#    const-wide/16 v3, 0x0
#
#    iput-wide v3, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J
#
#    .line 5515
#    new-instance v13, Lcom/tencentmusic/ad/internal/c/d/b$g;
#
#    move-object v3, v13
#
#    move-object v4, v2
#
#    move-object v6, v9
#
#    invoke-direct/range {v3 .. v8}, Lcom/tencentmusic/ad/internal/c/d/b$g;-><init>(Lcom/tencentmusic/ad/internal/c/d/b;Lkotlin/jvm/internal/Ref$LongRef;Lcom/tencentmusic/ad/internal/c/a/a;FLkotlin/jvm/internal/Ref$BooleanRef;)V
#
#    .line 5571
#    new-instance v3, Lcom/tencentmusic/ad/internal/c/g/c;
#
#    .line 5572
#    iget-object v5, v2, Lcom/tencentmusic/ad/internal/c/d/b;->k:Landroid/content/Context;
#
#    .line 5574
#    iget-object v7, v2, Lcom/tencentmusic/ad/internal/c/d/b;->l:Ljava/lang/String;
#
#    .line 5576
#    move-object v2, v13
#
#    check-cast v2, Lcom/tencentmusic/ad/internal/c/g/b;
#
#    move-object v4, v3
#
#    move-object v6, v9
#
#    move-object/from16 v8, p2
#
#    move-object v9, v2
#
#    .line 5571
#    invoke-direct/range {v4 .. v9}, Lcom/tencentmusic/ad/internal/c/g/c;-><init>(Landroid/content/Context;Lcom/tencentmusic/ad/internal/c/a/a;Ljava/lang/String;Landroid/view/View;Lcom/tencentmusic/ad/internal/c/g/b;)V
#
#    const-string v2, "bmp"
#
#    .line 5578
#    invoke-static {v11, v2}, Lkotlin/jvm/internal/t;->c(Ljava/lang/Object;Ljava/lang/String;)V
#
#    const-string v2, "container"
#
#    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->c(Ljava/lang/Object;Ljava/lang/String;)V
#
#    .line 8141
#    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->removeAllViews()V
#
#    .line 8142
#    iget-object v2, v3, Lcom/tencentmusic/ad/internal/c/g/c;->c:Lcom/tencentmusic/ad/internal/c/g/a;
#
#    iget-object v4, v3, Lcom/tencentmusic/ad/internal/c/g/c;->f:Lcom/tencentmusic/ad/internal/c/a/a;
#
#    .line 9022
#    iget-object v4, v4, Lcom/tencentmusic/ad/internal/c/a/a;->f:Ljava/lang/String;
#
#    const-string v5, "bmp"
#
#    .line 8142
#    invoke-static {v11, v5}, Lkotlin/jvm/internal/t;->c(Ljava/lang/Object;Ljava/lang/String;)V
#
#    const-string/jumbo v5, "scaleType"
#
#    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->c(Ljava/lang/Object;Ljava/lang/String;)V
#
#    .line 9050
#    iget-object v5, v2, Lcom/tencentmusic/ad/internal/c/g/a;->a:Landroid/widget/ImageView;
#
#    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
#
#    .line 9051
#    iget-object v2, v2, Lcom/tencentmusic/ad/internal/c/g/a;->a:Landroid/widget/ImageView;
#
#    const-string/jumbo v5, "scaleFill"
#
#    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
#
#    move-result v4
#
#    if-eqz v4, :cond_4
#
#    .line 9052
#    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;
#
#    goto :goto_0
#
#    .line 9054
#    :cond_4
#    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;
#
#    .line 9051
#    :goto_0
#    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
#
#    .line 8143
#    iget-object v2, v3, Lcom/tencentmusic/ad/internal/c/g/c;->c:Lcom/tencentmusic/ad/internal/c/g/a;
#
#    iget-object v4, v3, Lcom/tencentmusic/ad/internal/c/g/c;->f:Lcom/tencentmusic/ad/internal/c/a/a;
#
#    .line 10018
#    iget-object v4, v4, Lcom/tencentmusic/ad/internal/c/a/a;->b:Ljava/lang/String;
#
#    const-string/jumbo v5, "platformTag"
#
#    .line 8143
#    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->c(Ljava/lang/Object;Ljava/lang/String;)V
#
#    .line 10059
#    move-object v5, v4
#
#    check-cast v5, Ljava/lang/CharSequence;
#
#    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I
#
#    move-result v5
#
#    if-nez v5, :cond_5
#
#    const/4 v5, 0x1
#
#    goto :goto_1
#
#    :cond_5
#    const/4 v5, 0x0
#
#    :goto_1
#    if-eqz v5, :cond_6
#
#    .line 10060
#    iget-object v2, v2, Lcom/tencentmusic/ad/internal/c/g/a;->b:Landroid/widget/TextView;
#
#    const/16 v4, 0x8
#
#    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V
#
#    goto :goto_2
#
#    .line 10062
#    :cond_6
#    new-instance v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
#
#    const/4 v6, -0x2
#
#    invoke-direct {v5, v6, v6}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V
#
#    move/from16 v6, p3
#
#    float-to-int v6, v6
#
#    .line 10063
#    sget-object v7, Lcom/tencentmusic/ad/internal/a/d/a;->a:Lcom/tencentmusic/ad/internal/a/d/a;
#
#    const/high16 v7, 0x41e00000    # 28.0f
#
#    invoke-static {v7}, Lcom/tencentmusic/ad/internal/a/d/a;->a(F)I
#
#    move-result v7
#
#    add-int/2addr v6, v7
#
#    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I
#
#    .line 10064
#    sget-object v6, Lcom/tencentmusic/ad/internal/a/d/a;->a:Lcom/tencentmusic/ad/internal/a/d/a;
#
#    const/high16 v6, 0x41f00000    # 30.0f
#
#    invoke-static {v6}, Lcom/tencentmusic/ad/internal/a/d/a;->a(F)I
#
#    move-result v6
#
#    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I
#
#    .line 10065
#    iput v12, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I
#
#    .line 10066
#    iput v12, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I
#
#    .line 10067
#    iget-object v6, v2, Lcom/tencentmusic/ad/internal/c/g/a;->b:Landroid/widget/TextView;
#
#    check-cast v5, Landroid/view/ViewGroup$LayoutParams;
#
#    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
#
#    .line 10068
#    iget-object v5, v2, Lcom/tencentmusic/ad/internal/c/g/a;->b:Landroid/widget/TextView;
#
#    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V
#
#    .line 10069
#    iget-object v2, v2, Lcom/tencentmusic/ad/internal/c/g/a;->b:Landroid/widget/TextView;
#
#    check-cast v4, Ljava/lang/CharSequence;
#
#    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
#
#    .line 8144
#    :goto_2
#    iget-object v2, v3, Lcom/tencentmusic/ad/internal/c/g/c;->c:Lcom/tencentmusic/ad/internal/c/g/a;
#
#    check-cast v2, Landroid/view/View;
#
#    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
#
#    .line 8145
#    iget-object v0, v3, Lcom/tencentmusic/ad/internal/c/g/c;->e:Lcom/tencentmusic/ad/internal/a/a;
#
#    invoke-virtual {v0}, Lcom/tencentmusic/ad/internal/a/a;->b()Lcom/tencentmusic/ad/internal/a/a;
#
#    .line 8146
#    iget-object v0, v3, Lcom/tencentmusic/ad/internal/c/g/c;->b:Lcom/tencentmusic/ad/internal/c/g/b;
#
#    invoke-interface {v0}, Lcom/tencentmusic/ad/internal/c/g/b;->a()V
#
#    .line 10164
#    iget-boolean v0, v3, Lcom/tencentmusic/ad/internal/c/g/c;->d:Z
#
#    if-nez v0, :cond_7
#
#    .line 10165
#    iput-boolean v10, v3, Lcom/tencentmusic/ad/internal/c/g/c;->d:Z
#
#    .line 10166
#    invoke-virtual {v3}, Lcom/tencentmusic/ad/internal/c/g/c;->a()V
#    :try_end_1
#    .catchall {:try_start_1 .. :try_end_1} :catchall_0
#
#    .line 3472
#    :cond_7
#    monitor-exit p0
#
#    return-void
#
#    .line 49
#    :cond_8
#    monitor-exit p0

    return-void

#    :catchall_0
#    move-exception v0
#
#    monitor-exit p0
#
#    throw v0
.end method

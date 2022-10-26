.class public Lcom/tencent/qqmusic/business/user/UserHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqmusic/business/user/UserHelper$a;,
        Lcom/tencent/qqmusic/business/user/UserHelper$b;
    }
.end annotation


# static fields
.field public static final CAN_PLAY_HQ_POS:I = 0x0

.field public static final CAN_PLAY_SQ_POS:I = 0x1

.field public static METHOD_INVOKE_SWITCHER:[I = null

.field private static final TAG:Ljava/lang/String; = "UserHelper"

.field private static checked:Z = false

.field private static result:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canPlayHQ()Z
    .locals 8

    sget-object v0, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0xd

    if-ge v2, v1, :cond_0

    aget v0, v0, v2

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0xa0c7

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static/range {v2 .. v7}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyOneArg(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v1, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 197
    :cond_0
    invoke-static {}, Lcom/tencent/qqmusic/business/user/h;->a()Lcom/tencent/qqmusic/business/user/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqmusic/business/user/h;->s()Lcom/tencent/qqmusic/business/user/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 198
    invoke-virtual {v0}, Lcom/tencent/qqmusic/business/user/c;->ab()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/qqmusic/business/user/c;->G()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static canPlaySQ()Z
    .locals 8

    sget-object v0, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0xe

    if-ge v2, v1, :cond_0

    aget v0, v0, v2

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0xa0c8

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static/range {v2 .. v7}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyOneArg(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v1, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 205
    :cond_0
    invoke-static {}, Lcom/tencent/qqmusic/business/user/h;->a()Lcom/tencent/qqmusic/business/user/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqmusic/business/user/h;->s()Lcom/tencent/qqmusic/business/user/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 206
    invoke-virtual {v0}, Lcom/tencent/qqmusic/business/user/c;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/qqmusic/business/user/c;->G()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getCanPlaySwitch()J
    .locals 8

    sget-object v0, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0x11

    if-ge v2, v1, :cond_0

    aget v0, v0, v2

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0xa0cb

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static/range {v2 .. v7}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyOneArg(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v1, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 250
    invoke-static {}, Lcom/tencent/qqmusic/business/user/UserHelper;->canPlayHQ()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/qqmusiccommon/util/b/a;->a(JIZ)J

    move-result-wide v0

    const/4 v2, 0x1

    .line 251
    invoke-static {}, Lcom/tencent/qqmusic/business/user/UserHelper;->canPlaySQ()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/qqmusiccommon/util/b/a;->a(JIZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastUin()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    invoke-static {}, Lcom/tencent/qqmusiccommon/util/bw;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/tencent/qqmusic/business/user/h;->a()Lcom/tencent/qqmusic/business/user/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqmusic/business/user/h;->v()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {}, Lcom/tencent/qqmusiccommon/util/bw;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-static {}, Lcom/tencent/qqmusic/common/ipc/g;->f()Lcom/tencent/qqmusic/common/ipc/WeakMainProcessMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqmusic/common/ipc/WeakMainProcessMethods;->getLastUin()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static getMusicEncryptUin()Ljava/lang/String;
    .locals 8

    sget-object v0, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x3

    if-ge v2, v1, :cond_0

    aget v0, v0, v2

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0xa0bd

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyOneArg(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v1, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 72
    :cond_0
    invoke-static {}, Lcom/tencent/qqmusiccommon/util/bw;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-static {}, Lcom/tencent/qqmusic/business/user/h;->a()Lcom/tencent/qqmusic/business/user/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqmusic/business/user/h;->u()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_1
    invoke-static {}, Lcom/tencent/qqmusiccommon/util/bw;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    invoke-static {}, Lcom/tencent/qqmusic/common/ipc/g;->f()Lcom/tencent/qqmusic/common/ipc/WeakMainProcessMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqmusic/common/ipc/WeakMainProcessMethods;->getMusicEncryptUin()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static getOfferIdType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getReportUin()Ljava/lang/String;
    .locals 8

    sget-object v0, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0xc

    if-ge v2, v1, :cond_0

    aget v0, v0, v2

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0xa0c6

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyOneArg(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v1, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 180
    :cond_0
    invoke-static {}, Lcom/tencent/qqmusiccommon/util/bw;->d()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 181
    invoke-static {}, Lcom/tencent/qqmusic/business/user/h;->a()Lcom/tencent/qqmusic/business/user/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqmusic/business/user/h;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    invoke-static {}, Lcom/tencent/qqmusic/business/user/h;->a()Lcom/tencent/qqmusic/business/user/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqmusic/business/user/h;->t()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_1
    invoke-static {}, Lcom/tencent/qqmusiccommon/util/bw;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    invoke-static {}, Lcom/tencent/qqmusic/common/ipc/g;->f()Lcom/tencent/qqmusic/common/ipc/WeakMainProcessMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqmusic/common/ipc/WeakMainProcessMethods;->getWeakQQ()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 187
    :goto_0
    invoke-static {v0}, Lcom/tencent/qqmusic/business/user/UserHelper;->isUinValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 188
    invoke-static {}, Lcom/tencent/qqmusic/sharedfileaccessor/c;->a()Lcom/tencent/qqmusic/sharedfileaccessor/c;

    move-result-object v0

    const-string v2, "KEY_USER_REPORT_UIN"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qqmusic/sharedfileaccessor/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public static getUin()Ljava/lang/String;
    .locals 8

    sget-object v0, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v2, v1, :cond_0

    aget v0, v0, v2

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0xa0bc

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyOneArg(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v1, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 61
    :cond_0
    invoke-static {}, Lcom/tencent/qqmusiccommon/util/bw;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-static {}, Lcom/tencent/qqmusic/business/user/h;->a()Lcom/tencent/qqmusic/business/user/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqmusic/business/user/h;->t()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_1
    invoke-static {}, Lcom/tencent/qqmusiccommon/util/bw;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    invoke-static {}, Lcom/tencent/qqmusic/common/ipc/g;->f()Lcom/tencent/qqmusic/common/ipc/WeakMainProcessMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqmusic/common/ipc/WeakMainProcessMethods;->getWeakQQ()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static getUinTailNumber()I
    .locals 8

    sget-object v0, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0x15

    if-ge v2, v1, :cond_0

    aget v0, v0, v2

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0xa0cf

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static/range {v2 .. v7}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyOneArg(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v1, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 295
    :cond_0
    invoke-static {}, Lcom/tencent/qqmusic/business/user/UserHelper;->getUin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 298
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "UserHelper"

    const-string v2, "[getUinTailNumber] %s"

    .line 301
    invoke-static {v1, v2, v0}, Lcom/tencent/qqmusiccommon/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getVipLevel()J
    .locals 8

    sget-object v0, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0x12

    if-ge v2, v1, :cond_0

    aget v0, v0, v2

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0xa0cc

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static/range {v2 .. v7}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyOneArg(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v1, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 258
    :cond_0
    invoke-static {}, Lcom/tencent/qqmusic/business/user/h;->a()Lcom/tencent/qqmusic/business/user/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqmusic/business/user/h;->s()Lcom/tencent/qqmusic/business/user/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 259
    invoke-static {}, Lcom/tencent/qqmusic/business/user/h;->a()Lcom/tencent/qqmusic/business/user/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqmusic/business/user/h;->s()Lcom/tencent/qqmusic/business/user/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqmusic/business/user/c;->ay()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static isAutoPay()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static isCurrentUser(Ljava/lang/String;)Z
    .locals 8

    sget-object v0, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x6

    if-ge v2, v1, :cond_0

    aget v0, v0, v2

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0xa0c0

    const-class v6, Ljava/lang/String;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyOneArg(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v1, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v1, :cond_0

    iget-object p0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 122
    :cond_0
    invoke-static {}, Lcom/tencent/qqmusic/business/user/UserHelper;->getUin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/tencent/qqmusic/business/user/UserHelper;->isSameUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isCurrentUser(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    sget-object v0, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x7

    if-ge v4, v3, :cond_0

    aget v0, v0, v4

    const/16 v3, 0x3e9

    if-ne v0, v3, :cond_0

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p0, v3, v1

    aput-object p1, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0xa0c1

    new-array v7, v0, [Ljava/lang/Class;

    const-class v0, Ljava/lang/String;

    aput-object v0, v7, v1

    const-class v0, Ljava/lang/String;

    aput-object v0, v7, v2

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static/range {v3 .. v8}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyMoreArgs([Ljava/lang/Object;Ljava/lang/Object;ZI[Ljava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v3, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v3, :cond_0

    iget-object p0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 132
    :cond_0
    invoke-static {}, Lcom/tencent/qqmusic/business/user/UserHelper;->getMusicEncryptUin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/tencent/qqmusic/business/user/UserHelper;->isSameUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/tencent/qqmusic/business/user/UserHelper;->getUin()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/tencent/qqmusic/business/user/UserHelper;->isSameUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isLogin()Z
    .locals 8

    sget-object v0, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0xa0ba

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static/range {v2 .. v7}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyOneArg(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v1, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 43
    :cond_0
    invoke-static {}, Lcom/tencent/qqmusiccommon/util/bw;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-static {}, Lcom/tencent/qqmusic/business/user/h;->a()Lcom/tencent/qqmusic/business/user/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqmusic/business/user/h;->r()Z

    move-result v0

    return v0

    .line 46
    :cond_1
    invoke-static {}, Lcom/tencent/qqmusic/common/ipc/g;->f()Lcom/tencent/qqmusic/common/ipc/WeakMainProcessMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqmusic/common/ipc/WeakMainProcessMethods;->getWeakQQ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isLongAudioVip()Z
    .locals 8

    sget-object v0, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0x14

    if-ge v2, v1, :cond_0

    aget v0, v0, v2

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0xa0ce

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static/range {v2 .. v7}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyOneArg(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v1, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 279
    :cond_0
    invoke-static {}, Lcom/tencent/qqmusic/business/user/h;->a()Lcom/tencent/qqmusic/business/user/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqmusic/business/user/h;->s()Lcom/tencent/qqmusic/business/user/c;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {v0}, Lcom/tencent/qqmusic/business/user/c;->y()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isPersonalityOpen()Z
    .locals 8

    sget-object v0, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0xf

    if-ge v2, v1, :cond_0

    aget v0, v0, v2

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0xa0c9

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static/range {v2 .. v7}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyOneArg(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v1, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 213
    :cond_0
    invoke-static {}, Lcom/tencent/qqmusic/business/user/h;->a()Lcom/tencent/qqmusic/business/user/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqmusic/business/user/h;->s()Lcom/tencent/qqmusic/business/user/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 214
    invoke-virtual {v0}, Lcom/tencent/qqmusic/business/user/c;->d()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isQQLogin()Z
    .locals 8

    sget-object v0, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x5

    if-ge v2, v1, :cond_0

    aget v0, v0, v2

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0xa0bf

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static/range {v2 .. v7}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyOneArg(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v1, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 108
    :cond_0
    invoke-static {}, Lcom/tencent/qqmusiccommon/util/bw;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-static {}, Lcom/tencent/qqmusic/business/user/h;->a()Lcom/tencent/qqmusic/business/user/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqmusic/business/user/h;->p()Z

    move-result v0

    return v0

    .line 110
    :cond_1
    invoke-static {}, Lcom/tencent/qqmusiccommon/util/bw;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    invoke-static {}, Lcom/tencent/qqmusic/common/ipc/g;->f()Lcom/tencent/qqmusic/common/ipc/WeakMainProcessMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqmusic/common/ipc/WeakMainProcessMethods;->isQQLogin()Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static isSameUser(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    sget-object v0, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    const/16 v3, 0x8

    if-ge v3, v2, :cond_0

    aget v0, v0, v3

    const/16 v2, 0x3e9

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0xa0c2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v0, v1

    const-class v7, Ljava/lang/String;

    aput-object v7, v0, v3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v0

    invoke-static/range {v2 .. v7}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyMoreArgs([Ljava/lang/Object;Ljava/lang/Object;ZI[Ljava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v2, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v2, :cond_0

    iget-object p0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 136
    :cond_0
    invoke-static {p0, p1, v1}, Lcom/tencent/qqmusic/business/user/UserHelper;->isSameUser(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isSameUser(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 9

    sget-object v0, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v3, v0

    const/16 v4, 0x9

    if-ge v4, v3, :cond_0

    aget v0, v0, v4

    const/16 v3, 0x3e9

    if-ne v0, v3, :cond_0

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p0, v3, v2

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const/4 v6, 0x1

    const v7, 0xa0c3

    new-array v0, v0, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v0, v2

    const-class v8, Ljava/lang/String;

    aput-object v8, v0, v1

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v0, v5

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move v5, v6

    move v6, v7

    move-object v7, v0

    invoke-static/range {v3 .. v8}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyMoreArgs([Ljava/lang/Object;Ljava/lang/Object;ZI[Ljava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v3, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v3, :cond_0

    iget-object p0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    return v1

    .line 151
    :cond_1
    invoke-static {p0}, Lcom/tencent/qqmusic/business/user/UserHelper;->isUinValid(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p1}, Lcom/tencent/qqmusic/business/user/UserHelper;->isUinValid(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v2
.end method

.method public static isStrongLogin()Z
    .locals 9

    sget-object v0, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget v0, v0, v1

    const/16 v2, 0x3e9

    if-ne v0, v2, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0xa0bb

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static/range {v3 .. v8}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyOneArg(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v2, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 51
    :cond_0
    invoke-static {}, Lcom/tencent/qqmusiccommon/util/bw;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    invoke-static {}, Lcom/tencent/qqmusic/business/user/h;->a()Lcom/tencent/qqmusic/business/user/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqmusic/business/user/h;->w()Lcom/tencent/qqmusic/business/user/c;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 54
    :cond_2
    invoke-static {}, Lcom/tencent/qqmusic/common/ipc/g;->f()Lcom/tencent/qqmusic/common/ipc/WeakMainProcessMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqmusic/common/ipc/WeakMainProcessMethods;->getStrongQQ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public static isUinValid(Ljava/lang/String;)Z
    .locals 8

    sget-object v0, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0xa

    if-ge v2, v1, :cond_0

    aget v0, v0, v2

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0xa0c4

    const-class v6, Ljava/lang/String;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyOneArg(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v1, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v1, :cond_0

    iget-object p0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 158
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isVip()Z

    .locals 1

    .line 24
    const/4 v0, 0x1

    return v0

.end method


.method public static isVipExpire()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 287
    invoke-static {}, Lcom/tencent/qqmusic/business/user/h;->a()Lcom/tencent/qqmusic/business/user/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqmusic/business/user/h;->s()Lcom/tencent/qqmusic/business/user/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0}, Lcom/tencent/qqmusic/business/user/c;->Y()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isWXLogin()Z
    .locals 1

    const/4 v0, 0x1

    return v0

.end method

.method public static isWXUser(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0

.end method

.method public static isWeakLogin()Z
    .locals 8

    sget-object v0, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0x16

    if-ge v2, v1, :cond_0

    aget v0, v0, v2

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0xa0d0

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static/range {v2 .. v7}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyOneArg(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v1, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 308
    :cond_0
    invoke-static {}, Lcom/tencent/qqmusic/business/user/UserHelper;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/qqmusic/business/user/UserHelper;->isStrongLogin()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static openPersonality(Z)V
    .locals 8

    sget-object v0, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0x10

    if-ge v2, v1, :cond_0

    aget v0, v0, v2

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0xa0ca

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static/range {v2 .. v7}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyOneArg(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v0, :cond_0

    return-void

    .line 223
    :cond_0
    invoke-static {}, Lcom/tencent/qqmusic/business/user/UserHelper;->isPersonalityOpen()Z

    move-result v0

    if-ne v0, p0, :cond_1

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[openPersonality]: same value, just return :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UserHelper"

    invoke-static {v0, p0}, Lcom/tencent/qqmusiccommon/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 227
    :cond_1
    invoke-static {}, Lcom/tencent/qqmusic/business/user/h;->a()Lcom/tencent/qqmusic/business/user/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqmusic/business/user/h;->s()Lcom/tencent/qqmusic/business/user/c;

    move-result-object v0

    if-eqz v0, :cond_2

    xor-int/lit8 v1, p0, 0x1

    .line 229
    invoke-virtual {v0, v1}, Lcom/tencent/qqmusic/business/user/c;->a(I)V

    .line 230
    invoke-virtual {v0}, Lcom/tencent/qqmusic/business/user/c;->az()Lcom/tencent/qqmusic/business/user/AuthUser;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqmusicplayerprocess/network/c;->a(Lcom/tencent/qqmusic/business/user/AuthUser;)Z

    .line 231
    sget-object v1, Lcom/tencent/qqmusic/business/user/i;->a:Lcom/tencent/qqmusic/business/user/i;

    invoke-virtual {v1, p0}, Lcom/tencent/qqmusic/business/user/i;->a(Z)V

    .line 232
    new-instance p0, Lcom/tencent/qqmusic/business/user/UserHelper$1;

    invoke-direct {p0, v0}, Lcom/tencent/qqmusic/business/user/UserHelper$1;-><init>(Lcom/tencent/qqmusic/business/user/c;)V

    invoke-static {p0}, Lcom/tencent/qqmusiccommon/util/an;->c(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public static runOnLoginInit(Ljava/lang/Runnable;)V
    .locals 8

    sget-object v0, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0x18

    if-ge v2, v1, :cond_0

    aget v0, v0, v2

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0xa0d2

    const-class v6, Ljava/lang/Runnable;

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyOneArg(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v0, :cond_0

    return-void

    .line 357
    :cond_0
    invoke-static {}, Lcom/tencent/qqmusiccommon/util/bw;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p0, :cond_1

    return-void

    .line 363
    :cond_1
    invoke-static {}, Lcom/tencent/qqmusic/business/user/h;->a()Lcom/tencent/qqmusic/business/user/h;

    move-result-object v0

    new-instance v1, Lcom/tencent/qqmusic/business/user/UserHelper$3;

    invoke-direct {v1, p0}, Lcom/tencent/qqmusic/business/user/UserHelper$3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqmusic/business/user/h;->a(Lcom/tencent/qqmusic/business/user/h$a;)V

    return-void

    .line 358
    :cond_2
    new-instance p0, Lcom/tencent/qqmusic/module/common/exception/IncorrectProcessException;

    invoke-direct {p0}, Lcom/tencent/qqmusic/module/common/exception/IncorrectProcessException;-><init>()V

    throw p0
.end method

.method public static runOnWeakFinish(Lcom/tencent/qqmusic/business/user/UserHelper$b;)V
    .locals 8

    sget-object v0, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0x17

    if-ge v2, v1, :cond_0

    aget v0, v0, v2

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0xa0d1

    const-class v6, Lcom/tencent/qqmusic/business/user/UserHelper$b;

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyOneArg(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v0, :cond_0

    return-void

    .line 315
    :cond_0
    invoke-static {}, Lcom/tencent/qqmusiccommon/util/bw;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 318
    invoke-static {}, Lcom/tencent/qqmusic/business/user/UserHelper;->isStrongLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    invoke-interface {p0}, Lcom/tencent/qqmusic/business/user/UserHelper$b;->a()V

    goto :goto_0

    .line 320
    :cond_1
    invoke-static {}, Lcom/tencent/qqmusic/business/user/UserHelper;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 321
    invoke-static {}, Lcom/tencent/qqmusic/business/user/h;->a()Lcom/tencent/qqmusic/business/user/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqmusic/business/user/h;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    invoke-static {}, Lcom/tencent/qqmusic/business/user/h;->a()Lcom/tencent/qqmusic/business/user/h;

    move-result-object v0

    new-instance v1, Lcom/tencent/qqmusic/business/user/UserHelper$2;

    invoke-direct {v1, p0}, Lcom/tencent/qqmusic/business/user/UserHelper$2;-><init>(Lcom/tencent/qqmusic/business/user/UserHelper$b;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqmusic/business/user/h;->b(Lcom/tencent/qqmusic/business/user/g;)V

    goto :goto_0

    :cond_2
    const-string v0, "UserHelper"

    const-string v1, "[runOnWeakFinish] turn weak"

    .line 343
    invoke-static {v0, v1}, Lcom/tencent/qqmusiccommon/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-interface {p0}, Lcom/tencent/qqmusic/business/user/UserHelper$b;->b()V

    goto :goto_0

    .line 347
    :cond_3
    invoke-interface {p0}, Lcom/tencent/qqmusic/business/user/UserHelper$b;->c()V

    :goto_0
    return-void

    .line 316
    :cond_4
    new-instance p0, Lcom/tencent/qqmusic/module/common/exception/IncorrectProcessException;

    invoke-direct {p0}, Lcom/tencent/qqmusic/module/common/exception/IncorrectProcessException;-><init>()V

    throw p0
.end method

.method public static serverRequestOpenSdkLogin()Z
    .locals 8

    sget-object v0, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0x1a

    if-ge v2, v1, :cond_0

    aget v0, v0, v2

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0xa0d4

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static/range {v2 .. v7}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyOneArg(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v1, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 440
    :cond_0
    invoke-static {}, Lcom/tencent/qqmusic/business/user/login/qqopensdklogin/c;->a()Z

    move-result v0

    return v0
.end method

.method public static serverRequestWtLogin()Z
    .locals 8

    sget-object v0, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0x1b

    if-ge v2, v1, :cond_0

    aget v0, v0, v2

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0xa0d5

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static/range {v2 .. v7}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyOneArg(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v1, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 447
    :cond_0
    invoke-static {}, Lcom/tencent/qqmusic/business/user/login/qqopensdklogin/c;->b()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized validSignature()Z
    .locals 9

    const-class v0, Lcom/tencent/qqmusic/business/user/UserHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    array-length v1, v1

    const/16 v2, 0x19

    if-ge v2, v1, :cond_0

    sget-object v1, Lcom/tencent/qqmusic/business/user/UserHelper;->METHOD_INVOKE_SWITCHER:[I

    aget v1, v1, v2

    const/16 v2, 0x3e9

    if-ne v1, v2, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0xa0d3

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static/range {v3 .. v8}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyOneArg(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v1

    iget-boolean v2, v1, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 410
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/tencent/qqmusic/business/user/UserHelper;->checked:Z

    if-eqz v1, :cond_1

    .line 411
    sget-boolean v1, Lcom/tencent/qqmusic/business/user/UserHelper;->result:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v1

    :cond_1
    const/4 v1, 0x1

    .line 413
    :try_start_2
    sput-boolean v1, Lcom/tencent/qqmusic/business/user/UserHelper;->checked:Z

    const-string v2, "30820247308201b0a00302010202044cc5449d300d06092a864886f70d01010505003067310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e743110300e060355040b130754656e63656e743110300e0603550403130754656e63656e743020170d3130313032353038343933335a180f32303630313031323038343933335a3067310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e743110300e060355040b130754656e63656e743110300e0603550403130754656e63656e7430819f300d06092a864886f70d010101050003818d00308189028181008b9a5bb7760d1488dcc47c1d9ada2e4b3f098d3960b313f753770ea97b9052898a43c72021373201f84935e9aff63f4c55534ded620258a659ca650a036f83c8fcd1393be386d10ca7144dc2044447f92af35cc406f79e316fdbb6ac3719be5133fa6b4df3f654a1000999df09436d3c144b7dac2aa4fd0f4c32af2c0516b41f0203010001300d06092a864886f70d010105050003818100505a3cf48affde3e7bd92fb9696347abae674008de34b734ce04d15aab320f741c15de264f36644656fb852d00a747f5ab0fb0b0266c9b9cdfe3b832c60142153ebfaedf02b41e36e2956e070f76251fbc65d0f12df88df6266f194eb1d75b89321194652df23b6cba187edc0d9cdd7b1ef784a93ca771dc5e3b871424953ba9"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 416
    :try_start_3
    invoke-static {}, Lcom/tencent/qqmusic/MusicApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.tencent.qqmusic"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 417
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_3

    const-string v4, "UserHelper"

    const-string v5, "[validSignature] sign size=%d"

    new-array v6, v1, [Ljava/lang/Object;

    .line 419
    array-length v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/tencent/qqmusiccommon/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    array-length v4, v3

    :goto_0
    if-ge v8, v4, :cond_3

    aget-object v5, v3, v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 422
    :try_start_4
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 423
    sput-boolean v1, Lcom/tencent/qqmusic/business/user/UserHelper;->result:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_5
    const-string v6, "UserHelper"

    const-string v7, "checkSignature1"

    .line 426
    invoke-static {v6, v7, v5}, Lcom/tencent/qqmusiccommon/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_6
    const-string v2, "UserHelper"

    const-string v3, "checkSignature2"

    .line 431
    invoke-static {v2, v3, v1}, Lcom/tencent/qqmusiccommon/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 433
    :cond_3
    sget-boolean v1, Lcom/tencent/qqmusic/business/user/UserHelper;->result:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

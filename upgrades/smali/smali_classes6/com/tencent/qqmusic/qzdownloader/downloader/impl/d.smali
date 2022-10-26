.class public Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;
.super Lcom/tencent/qqmusic/qzdownloader/downloader/impl/b;
.source "SourceFile"


# static fields
.field public static METHOD_INVOKE_SWITCHER:[I


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private final D:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->D:Ljava/lang/StringBuffer;

    return-void
.end method

.method private static r()Ljava/lang/String;
    .locals 8

    sget-object v0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->METHOD_INVOKE_SWITCHER:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x6

    if-ge v2, v1, :cond_0

    aget v0, v0, v2

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x12145

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyOneArg(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v1, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 289
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 290
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/tencent/qqmusic/module/common/thread/d$c;Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/b;->a(Lcom/tencent/qqmusic/module/common/thread/d$c;Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;)V

    return-void
.end method

.method public a(Lcom/tencent/qqmusic/qzdownloader/downloader/impl/DownloadTask$a;Lcom/tencent/qqmusic/qzdownloader/downloader/strategy/b;Lcom/tencent/qqmusic/qzdownloader/downloader/strategy/b;Lcom/tencent/qqmusic/qzdownloader/downloader/strategy/c;Lcom/tencent/qqmusic/qzdownloader/downloader/strategy/d;Lcom/tencent/qqmusic/qzdownloader/downloader/a/c;Lcom/tencent/qqmusic/qzdownloader/downloader/a/c;Lcom/tencent/qqmusic/qzdownloader/downloader/Downloader$c;Lcom/tencent/qqmusic/qzdownloader/module/b/a/b;)V
    .locals 14

    sget-object v0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->METHOD_INVOKE_SWITCHER:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v2, 0x3e9

    if-ne v0, v2, :cond_0

    const/16 v0, 0x9

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v4, 0x2

    aput-object p3, v2, v4

    const/4 v5, 0x3

    aput-object p4, v2, v5

    const/4 v6, 0x4

    aput-object p5, v2, v6

    const/4 v7, 0x5

    aput-object p6, v2, v7

    const/4 v8, 0x6

    aput-object p7, v2, v8

    const/4 v9, 0x7

    aput-object p8, v2, v9

    const/16 v10, 0x8

    aput-object p9, v2, v10

    const/4 v11, 0x0

    const v12, 0x1213f

    new-array v0, v0, [Ljava/lang/Class;

    const-class v13, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/DownloadTask$a;

    aput-object v13, v0, v1

    const-class v1, Lcom/tencent/qqmusic/qzdownloader/downloader/strategy/b;

    aput-object v1, v0, v3

    const-class v1, Lcom/tencent/qqmusic/qzdownloader/downloader/strategy/b;

    aput-object v1, v0, v4

    const-class v1, Lcom/tencent/qqmusic/qzdownloader/downloader/strategy/c;

    aput-object v1, v0, v5

    const-class v1, Lcom/tencent/qqmusic/qzdownloader/downloader/strategy/d;

    aput-object v1, v0, v6

    const-class v1, Lcom/tencent/qqmusic/qzdownloader/downloader/a/c;

    aput-object v1, v0, v7

    const-class v1, Lcom/tencent/qqmusic/qzdownloader/downloader/a/c;

    aput-object v1, v0, v8

    const-class v1, Lcom/tencent/qqmusic/qzdownloader/downloader/Downloader$c;

    aput-object v1, v0, v9

    const-class v1, Lcom/tencent/qqmusic/qzdownloader/module/b/a/b;

    aput-object v1, v0, v10

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v3, p0

    move v4, v11

    move v5, v12

    move-object v6, v0

    invoke-static/range {v2 .. v7}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyMoreArgs([Ljava/lang/Object;Ljava/lang/Object;ZI[Ljava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v0, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-super/range {p0 .. p9}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/b;->a(Lcom/tencent/qqmusic/qzdownloader/downloader/impl/DownloadTask$a;Lcom/tencent/qqmusic/qzdownloader/downloader/strategy/b;Lcom/tencent/qqmusic/qzdownloader/downloader/strategy/b;Lcom/tencent/qqmusic/qzdownloader/downloader/strategy/c;Lcom/tencent/qqmusic/qzdownloader/downloader/strategy/d;Lcom/tencent/qqmusic/qzdownloader/downloader/a/c;Lcom/tencent/qqmusic/qzdownloader/downloader/a/c;Lcom/tencent/qqmusic/qzdownloader/downloader/Downloader$c;Lcom/tencent/qqmusic/qzdownloader/module/b/a/b;)V

    const/4 v0, 0x0

    move-object v1, p0

    .line 52
    iput-object v0, v1, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->s:Lcom/tencent/qqmusic/qzdownloader/downloader/strategy/d;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    sget-object v0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->METHOD_INVOKE_SWITCHER:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x4

    if-ge v2, v1, :cond_0

    aget v0, v0, v2

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const/4 v4, 0x2

    aput-object p3, v1, v4

    const/4 v5, 0x0

    const v6, 0x12143

    new-array v0, v0, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v0, v2

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v3

    const-class v2, Ljava/lang/Throwable;

    aput-object v2, v0, v4

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v2, p0

    move v3, v5

    move v4, v6

    move-object v5, v0

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyMoreArgs([Ljava/lang/Object;Ljava/lang/Object;ZI[Ljava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v0, :cond_0

    return-void

    .line 278
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    iget-object p1, p0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->D:Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ",Exception:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public a(Ljava/lang/String;J)Z
    .locals 9

    sget-object v0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->METHOD_INVOKE_SWITCHER:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x3

    if-ge v4, v3, :cond_0

    aget v0, v0, v4

    const/16 v3, 0x3e9

    if-ne v0, v3, :cond_0

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v5, 0x0

    const v6, 0x12142

    new-array v7, v0, [Ljava/lang/Class;

    const-class v0, Ljava/lang/String;

    aput-object v0, v7, v2

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v0, v7, v1

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object v4, p0

    invoke-static/range {v3 .. v8}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyMoreArgs([Ljava/lang/Object;Ljava/lang/Object;ZI[Ljava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v3, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v3, :cond_0

    iget-object p1, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 251
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 256
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long p1, p2, v3

    if-gtz p1, :cond_2

    return v1

    .line 263
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    .line 264
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 266
    :cond_3
    new-instance p1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSize()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v5, p1

    mul-long v3, v3, v5

    cmp-long p1, v3, p2

    if-lez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1

    :catch_0
    return v2
.end method

.method public a(Ljava/net/HttpURLConnection;Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;Lcom/tencent/qqmusic/module/common/thread/d$c;)Z
    .locals 12

    sget-object v0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->METHOD_INVOKE_SWITCHER:[I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    array-length v5, v0

    if-ge v4, v5, :cond_0

    aget v0, v0, v4

    const/16 v5, 0x3e9

    if-ne v0, v5, :cond_0

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v1

    aput-object p2, v6, v4

    aput-object p3, v6, v3

    const/4 v8, 0x0

    const v9, 0x12140

    new-array v10, v2, [Ljava/lang/Class;

    const-class v0, Ljava/net/HttpURLConnection;

    aput-object v0, v10, v1

    const-class v0, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;

    aput-object v0, v10, v4

    const-class v0, Lcom/tencent/qqmusic/module/common/thread/d$c;

    aput-object v0, v10, v3

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object v7, p0

    invoke-static/range {v6 .. v11}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyMoreArgs([Ljava/lang/Object;Ljava/lang/Object;ZI[Ljava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v5, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v5, :cond_0

    iget-object p1, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 58
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v5, v0

    iput-wide v5, p0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->i:J

    .line 59
    invoke-virtual {p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;->e()Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;

    move-result-object v0

    iget-wide v5, p0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->i:J

    iput-wide v5, v0, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;->c:J

    .line 61
    invoke-virtual {p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;->e()Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;->a:Ljava/lang/String;

    .line 63
    invoke-virtual {p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;->e()Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;->b:Ljava/lang/String;

    .line 65
    invoke-virtual {p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;->e()Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;

    move-result-object v0

    const-string v5, "Client-Ip"

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;->i:Ljava/lang/String;

    .line 67
    invoke-virtual {p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;->e()Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;

    move-result-object v0

    const-string v5, "Server-Check"

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;->j:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "server check:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;->e()Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;->j:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "StreamDownloadTask"

    invoke-virtual {p0, v5, v0}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;->e()Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;

    move-result-object v0

    const-string v6, "Server-md5"

    invoke-virtual {p1, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;->k:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "server md5:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;->e()Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;->k:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, -0x1

    .line 73
    iput-wide v6, p0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->A:J

    const-string v0, "Content-Range"

    .line 74
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "(\\d+)-(\\d+)\\/(\\d+)"

    .line 76
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->A:J

    .line 80
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->B:J

    .line 81
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->C:J

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get range start:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->A:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " end:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->B:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " total:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->C:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->o:Ljava/net/HttpURLConnection;

    const-string v0, "Size"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->j:J

    .line 91
    invoke-virtual {p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;->e()Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;

    move-result-object p1

    iget-wide v2, p0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->j:J

    iput-wide v2, p1, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "size parse error"

    .line 93
    invoke-static {v5, p2, p1}, Lcom/tencent/qqmusic/qzdownloader/module/a/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 96
    :cond_2
    iput-wide v6, p0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->j:J

    .line 97
    invoke-virtual {p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;->e()Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;

    move-result-object p1

    iput-wide v6, p1, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;->e:J

    .line 100
    :goto_0
    invoke-interface {p3}, Lcom/tencent/qqmusic/module/common/thread/d$c;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v4
.end method











# log_string funziona perfettamente
.method public static log_string(Ljava/lang/String;)V
    .locals 4
    .param p0, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    .line 15
    .local v0, "fw":Ljava/io/FileWriter;
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/storage/emulated/0/Download/log.txt"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    move-object v0, v1

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 18
    :catch_0
    move-exception v1

    .line 21
    :goto_0
    return-void
.end method
















.method public static copy(Ljava/lang/String;)V
    .locals 12
    .param p0, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 31
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v2, "src_file":Ljava/io/File;
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 35
    .local v3, "buf":[B
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "orig_file_name":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/storage/emulated/0/Download/qq/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xe

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, "dst":Ljava/lang/String;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    .line 40
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    .line 41
    const/16 v6, 0x4f

    const/4 v7, 0x0

    aget-byte v8, v3, v7

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v6, v8, :cond_0

    aget-byte v6, v3, v11

    const/16 v8, 0x67

    if-ne v8, v6, :cond_0

    aget-byte v6, v3, v10

    if-ne v8, v6, :cond_0

    const/16 v6, 0x53

    aget-byte v8, v3, v9

    if-ne v6, v8, :cond_0

    .line 42
    const-string v6, "ogg"

    .local v6, "str_ext":Ljava/lang/String;
    goto :goto_0

    .line 43
    .end local v6    # "str_ext":Ljava/lang/String;
    :cond_0
    const/16 v6, 0x66

    aget-byte v8, v3, v7

    if-ne v6, v8, :cond_1

    const/16 v6, 0x4c

    aget-byte v8, v3, v11

    if-ne v6, v8, :cond_1

    const/16 v6, 0x61

    aget-byte v8, v3, v10

    if-ne v6, v8, :cond_1

    const/16 v6, 0x43

    aget-byte v8, v3, v9

    if-ne v6, v8, :cond_1

    .line 44
    const-string v6, "flac"

    .restart local v6    # "str_ext":Ljava/lang/String;
    goto :goto_0

    .line 46
    .end local v6    # "str_ext":Ljava/lang/String;
    :cond_1
    const-string v6, "mp3"

    .line 47
    .restart local v6    # "str_ext":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 49
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 50
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v8

    .line 51
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v8

    .line 52
    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v8

    move v9, v8

    .local v9, "len":I
    if-lez v8, :cond_2

    .line 53
    invoke-virtual {v1, v3, v7, v9}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 56
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v2    # "src_file":Ljava/io/File;
    .end local v3    # "buf":[B
    .end local v4    # "orig_file_name":Ljava/lang/String;
    .end local v5    # "dst":Ljava/lang/String;
    .end local v6    # "str_ext":Ljava/lang/String;
    .end local v9    # "len":I
    goto :goto_2

    .line 57
    :catch_0
    move-exception v2

    .line 60
    :goto_2
    return-void
.end method




















.method public a(Ljava/net/HttpURLConnection;Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;Lcom/tencent/qqmusic/module/common/thread/d$c;I)Z
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p2

    const-string v10, " read count:"

    const-string v11, " real write:"

    const-string v12, "finish write total:"

    sget-object v1, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->METHOD_INVOKE_SWITCHER:[I

    const/4 v13, 0x1

    const/4 v7, 0x2

    const/4 v14, 0x0

    if-eqz v1, :cond_0

    array-length v2, v1

    if-ge v7, v2, :cond_0

    aget v1, v1, v7

    const/16 v2, 0x3e9

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v14

    aput-object v0, v2, v13

    aput-object p3, v2, v7

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const v5, 0x12141

    new-array v6, v1, [Ljava/lang/Class;

    const-class v1, Ljava/net/HttpURLConnection;

    aput-object v1, v6, v14

    const-class v1, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;

    aput-object v1, v6, v13

    const-class v1, Lcom/tencent/qqmusic/module/common/thread/d$c;

    aput-object v1, v6, v7

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v6, v4

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object v1, v2

    move-object/from16 v2, p0

    move v4, v5

    move-object v5, v6

    move-object v6, v8

    invoke-static/range {v1 .. v6}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyMoreArgs([Ljava/lang/Object;Ljava/lang/Object;ZI[Ljava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v1

    iget-boolean v2, v1, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v2, :cond_0

    iget-object v0, v1, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 108
    :cond_0
    invoke-interface/range {p3 .. p3}, Lcom/tencent/qqmusic/module/common/thread/d$c;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    return v14

    .line 112
    :cond_1
    invoke-virtual/range {p0 .. p3}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->a(Ljava/net/HttpURLConnection;Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;Lcom/tencent/qqmusic/module/common/thread/d$c;)Z

    move-result v1

    if-nez v1, :cond_2

    return v14

    .line 116
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 118
    iget-object v1, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v8, "StreamDownloadTask"

    if-eqz v1, :cond_3

    const-string v0, "empty savepath"

    .line 119
    invoke-virtual {v9, v8, v0}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v14

    .line 122
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save path to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", clientIp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;->e()Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", urlIp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->n:Lcom/tencent/qqmusic/qzdownloader/downloader/strategy/DownloadGlobalStrategy$StrategyInfo;

    if-eqz v2, :cond_4

    iget-object v2, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->n:Lcom/tencent/qqmusic/qzdownloader/downloader/strategy/DownloadGlobalStrategy$StrategyInfo;

    .line 125
    invoke-virtual {v2}, Lcom/tencent/qqmusic/qzdownloader/downloader/strategy/DownloadGlobalStrategy$StrategyInfo;->c()Lcom/tencent/qqmusic/qzdownloader/downloader/common/IPInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->n:Lcom/tencent/qqmusic/qzdownloader/downloader/strategy/DownloadGlobalStrategy$StrategyInfo;

    invoke-virtual {v2}, Lcom/tencent/qqmusic/qzdownloader/downloader/strategy/DownloadGlobalStrategy$StrategyInfo;->c()Lcom/tencent/qqmusic/qzdownloader/downloader/common/IPInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/qqmusic/qzdownloader/downloader/common/IPInfo;->a:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {v9, v8, v1}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;->e()Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;->a:Ljava/lang/String;

    .line 131
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "text/html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "text/vnd.wap.wml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "application/vnd.wap.wmlc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_f

    .line 136
    :cond_5
    iget-object v1, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->f:Ljava/lang/String;

    iget-wide v2, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->i:J

    invoke-virtual {v9, v1, v2, v3}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->a(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_6

    .line 137
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;->c()Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Status;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Status;->a(I)V

    return v14

    .line 141
    :cond_6
    iget-object v1, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;->a(Ljava/lang/String;)V

    .line 145
    sget-object v1, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->a:Lcom/tencent/qqmusic/qzdownloader/b/c;

    invoke-virtual {v1}, Lcom/tencent/qqmusic/qzdownloader/b/c;->a()Lcom/tencent/qqmusic/qzdownloader/b/c$a;

    move-result-object v7

    .line 146
    iget-wide v1, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->i:J

    .line 149
    new-instance v5, Ljava/io/File;

    iget-object v3, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->f:Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-static {v5, v14}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/DownloadTask$b;->a(Ljava/io/File;Z)Z

    move-result v3

    const/16 v4, 0xd

    if-nez v3, :cond_7

    .line 151
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;->c()Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Status;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Status;->a(I)V

    return v14

    :cond_7
    const-wide/16 v3, 0x0

    .line 156
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    .line 158
    :try_start_1
    new-instance v14, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v14, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_d

    .line 164
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v17

    move-object/from16 v19, v5

    .line 166
    iget-wide v5, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->A:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    cmp-long v20, v5, v3

    if-gtz v20, :cond_8

    .line 167
    :try_start_3
    iput-wide v3, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->A:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide v5, v3

    move-object/from16 v18, v10

    move-object/from16 v20, v11

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v5, v7

    move-object v7, v11

    move-object v6, v12

    const/4 v2, 0x0

    move-object v12, v8

    move-object v8, v10

    goto/16 :goto_e

    :cond_8
    move-object/from16 v20, v11

    move-wide/from16 v5, v17

    move-object/from16 v18, v10

    .line 172
    :goto_1
    :try_start_4
    iget-wide v10, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->C:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    cmp-long v17, v10, v3

    if-eqz v17, :cond_9

    :try_start_5
    iget-wide v1, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->C:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v5, v7

    move-object v6, v12

    move-object/from16 v7, v20

    const/4 v2, 0x0

    :goto_2
    move-object v12, v8

    move-object/from16 v8, v18

    goto/16 :goto_e

    :cond_9
    add-long/2addr v1, v5

    :goto_3
    move-wide v10, v1

    .line 175
    :try_start_6
    iget-wide v1, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->A:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    cmp-long v17, v1, v3

    if-lez v17, :cond_a

    .line 176
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleResponse] use rangeStart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->A:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v8, v1}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-wide v1, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->A:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-wide/from16 v23, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v5, v7

    move-object v6, v12

    move-object/from16 v7, v20

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    goto :goto_2

    .line 179
    :cond_a
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleResponse] use cachesize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v8, v1}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v23, v5

    .line 184
    :goto_4
    iget-wide v1, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->A:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    cmp-long v3, v5, v1

    if-gez v3, :cond_b

    .line 185
    :try_start_9
    iget-wide v1, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->A:J

    invoke-virtual {v14, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 186
    iget-wide v1, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->A:J

    invoke-virtual {v14, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset file length from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->A:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v8, v1}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_5

    .line 188
    :cond_b
    :try_start_a
    iget-wide v1, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->A:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    cmp-long v3, v5, v1

    if-ltz v3, :cond_c

    .line 189
    :try_start_b
    iget-wide v1, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->A:J

    invoke-virtual {v14, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek file start to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->A:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v8, v1}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 193
    :cond_c
    :goto_5
    :try_start_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start write from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->A:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " target size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->y:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v8, v1}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;->e()Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;

    move-result-object v1

    iput-wide v10, v1, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;->g:J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    .line 198
    :goto_6
    :try_start_d
    invoke-interface/range {p3 .. p3}, Lcom/tencent/qqmusic/module/common/thread/d$c;->b()Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v0, "cancel write file"

    .line 199
    invoke-virtual {v9, v8, v0}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    .line 241
    invoke-static {v13}, Lcom/tencent/qqmusic/module/common/e/a;->a(Ljava/lang/Object;)Z

    .line 242
    invoke-static {v14}, Lcom/tencent/qqmusic/module/common/e/a;->a(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->a:Lcom/tencent/qqmusic/qzdownloader/b/c;

    invoke-virtual {v0, v7}, Lcom/tencent/qqmusic/qzdownloader/b/c;->a(Lcom/tencent/qqmusic/qzdownloader/b/c$a;)V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->i:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v5, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v6, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v8, v0}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_d
    move-object/from16 v6, v18

    move-object/from16 v5, v20

    .line 202
    :try_start_e
    iget-object v0, v7, Lcom/tencent/qqmusic/qzdownloader/b/c$a;->a:[B
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    const/16 v5, 0x2000

    move-object/from16 v18, v6

    rsub-int v6, v1, 0x2000

    :try_start_f
    invoke-virtual {v13, v0, v1, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v6, 0x0

    if-gez v0, :cond_e

    const/16 v17, 0x1

    goto :goto_7

    :cond_e
    const/16 v17, 0x0

    .line 204
    :goto_7
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    if-lez v0, :cond_f

    add-int/2addr v1, v0

    :cond_f
    add-int/lit8 v6, v2, 0x1

    if-eq v1, v5, :cond_11

    if-eqz v17, :cond_10

    if-lez v1, :cond_10

    goto :goto_8

    :cond_10
    move/from16 v27, v6

    move-object/from16 v25, v7

    move-object/from16 v29, v18

    move-object/from16 v18, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v12

    move-object v12, v8

    goto :goto_9

    .line 211
    :cond_11
    :goto_8
    :try_start_10
    iget-object v2, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->e:Ljava/lang/String;

    iget-object v5, v7, Lcom/tencent/qqmusic/qzdownloader/b/c$a;->a:[B

    invoke-virtual {v9, v2, v5, v1}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->a(Ljava/lang/String;[BI)V

    .line 212
    iget-object v2, v7, Lcom/tencent/qqmusic/qzdownloader/b/c$a;->a:[B

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v5, v1}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    int-to-long v1, v1

    add-long/2addr v3, v1

    move/from16 p1, v6

    add-long v5, v3, v23

    .line 214
    :try_start_11
    iput-wide v5, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->k:J

    .line 215
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;->e()Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;

    move-result-object v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    move-object/from16 v25, v7

    :try_start_12
    iget-wide v6, v5, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;->f:J

    add-long/2addr v6, v1

    iput-wide v6, v5, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;->f:J

    .line 216
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;->e()Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;

    move-result-object v1

    iput-wide v3, v1, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;->d:J

    .line 218
    iget-object v2, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->e:Ljava/lang/String;

    iget-wide v5, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->k:J

    invoke-virtual/range {p2 .. p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;->e()Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    move-object/from16 v26, v8

    :try_start_13
    iget-wide v7, v1, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;->f:J
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    move-object/from16 v1, p0

    move-wide/from16 v21, v3

    move-wide v3, v10

    move/from16 v27, p1

    move-object/from16 v29, v18

    move-object/from16 v18, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v12

    move-object/from16 v12, v26

    :try_start_14
    invoke-virtual/range {v1 .. v8}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->a(Ljava/lang/String;JJJ)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    move-wide/from16 v3, v21

    const/4 v1, 0x0

    .line 221
    :goto_9
    :try_start_15
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;->e()Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;

    move-result-object v2

    iput-wide v3, v2, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;->d:J

    if-eqz v17, :cond_14

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eof readByteCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v15

    iput-wide v0, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->w:J

    .line 230
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;->e()Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;

    move-result-object v0

    iput-wide v3, v0, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;->d:J

    .line 232
    iget-object v0, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->p:Lcom/tencent/qqmusic/qzdownloader/downloader/b;

    iget-boolean v0, v0, Lcom/tencent/qqmusic/qzdownloader/downloader/b;->f:Z

    if-eqz v0, :cond_13

    add-long v23, v23, v3

    cmp-long v0, v10, v23

    if-nez v0, :cond_13

    invoke-virtual/range {p2 .. p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;->e()Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 233
    invoke-static/range {v18 .. v18}, Lcom/tencent/qqmusic/module/common/e/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual/range {p2 .. p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;->e()Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Content;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_a

    .line 236
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local file hash mismatch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/DownloadTask$HashCheckException;

    invoke-direct {v0, v9}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/DownloadTask$HashCheckException;-><init>(Lcom/tencent/qqmusic/qzdownloader/downloader/impl/DownloadTask;)V

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 241
    :cond_13
    :goto_a
    invoke-static {v13}, Lcom/tencent/qqmusic/module/common/e/a;->a(Ljava/lang/Object;)Z

    .line 242
    invoke-static {v14}, Lcom/tencent/qqmusic/module/common/e/a;->a(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->a:Lcom/tencent/qqmusic/qzdownloader/b/c;

    move-object/from16 v5, v25

    invoke-virtual {v0, v5}, Lcom/tencent/qqmusic/qzdownloader/b/c;->a(Lcom/tencent/qqmusic/qzdownloader/b/c$a;)V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v7, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v8, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->b(Ljava/lang/String;Ljava/lang/String;)V


    iget-object v0, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->f:Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->log_string(Ljava/lang/String;)V
# cp ~/devel/apktool/removed/qzdownloader/modified/d.smali /home/dummy/devel/apktool/smali/smali_classes6/com/tencent/qqmusic/qzdownloader/downloader/impl/d.smali
    invoke-static {v0}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->copy(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_14
    move/from16 v2, v27

    move-object/from16 v0, p2

    move-object v8, v12

    move-object/from16 v12, v19

    move-object/from16 v7, v25

    move-object/from16 v20, v28

    move-object/from16 v19, v18

    move-object/from16 v18, v29

    goto/16 :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v6, v19

    move-object/from16 v5, v25

    move/from16 v2, v27

    move-object/from16 v7, v28

    move-object/from16 v8, v29

    goto/16 :goto_e

    :catchall_4
    move-exception v0

    move-object/from16 v6, v19

    move-object/from16 v5, v25

    move/from16 v2, v27

    move-object/from16 v7, v28

    move-object/from16 v8, v29

    move-wide/from16 v3, v21

    goto/16 :goto_e

    :catchall_5
    move-exception v0

    move/from16 v2, p1

    move-wide/from16 v21, v3

    move-object v6, v12

    move-object/from16 v8, v18

    move-object/from16 v7, v20

    move-object/from16 v5, v25

    move-object/from16 v12, v26

    goto/16 :goto_e

    :catchall_6
    move-exception v0

    move/from16 v2, p1

    move-wide/from16 v21, v3

    move-object v6, v12

    move-object/from16 v7, v20

    move-object/from16 v5, v25

    goto/16 :goto_2

    :catchall_7
    move-exception v0

    move/from16 v2, p1

    move-wide/from16 v21, v3

    goto :goto_b

    :catchall_8
    move-exception v0

    move v2, v6

    goto :goto_b

    :catchall_9
    move-exception v0

    move-object/from16 v30, v7

    move-object v7, v5

    move-object/from16 v5, v30

    move-object/from16 v31, v8

    move-object v8, v6

    move-object v6, v12

    move-object/from16 v12, v31

    goto/16 :goto_e

    :catchall_a
    move-exception v0

    :goto_b
    move-object v5, v7

    move-object v6, v12

    move-object/from16 v7, v20

    goto/16 :goto_2

    :catchall_b
    move-exception v0

    move-object v5, v7

    move-object v6, v12

    move-object/from16 v7, v20

    move-object v12, v8

    move-object/from16 v8, v18

    goto :goto_c

    :catchall_c
    move-exception v0

    move-object v5, v7

    move-object v7, v11

    move-object v6, v12

    move-object v12, v8

    move-object v8, v10

    :goto_c
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    goto/16 :goto_e

    :catchall_d
    move-exception v0

    move-object v5, v7

    move-object v7, v11

    move-object v6, v12

    move-object v12, v8

    move-object v8, v10

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v14, 0x0

    goto :goto_e

    :catch_0
    move-object v5, v7

    move-object v7, v11

    move-object v6, v12

    move-object v12, v8

    move-object v8, v10

    .line 160
    :try_start_16
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;->c()Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Status;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Status;->a(I)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    .line 241
    invoke-static {v13}, Lcom/tencent/qqmusic/module/common/e/a;->a(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 242
    invoke-static {v1}, Lcom/tencent/qqmusic/module/common/e/a;->a(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->a:Lcom/tencent/qqmusic/qzdownloader/b/c;

    invoke-virtual {v0, v5}, Lcom/tencent/qqmusic/qzdownloader/b/c;->a(Lcom/tencent/qqmusic/qzdownloader/b/c$a;)V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catchall_e
    move-exception v0

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v14, v1

    goto :goto_d

    :catchall_f
    move-exception v0

    move-object v5, v7

    move-object v7, v11

    move-object v6, v12

    const/4 v1, 0x0

    move-object v12, v8

    move-object v8, v10

    move-object v13, v1

    move-object v14, v13

    :goto_d
    const/4 v2, 0x0

    .line 241
    :goto_e
    invoke-static {v13}, Lcom/tencent/qqmusic/module/common/e/a;->a(Ljava/lang/Object;)Z

    .line 242
    invoke-static {v14}, Lcom/tencent/qqmusic/module/common/e/a;->a(Ljava/lang/Object;)Z

    .line 243
    sget-object v1, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->a:Lcom/tencent/qqmusic/qzdownloader/b/c;

    invoke-virtual {v1, v5}, Lcom/tencent/qqmusic/qzdownloader/b/c;->a(Lcom/tencent/qqmusic/qzdownloader/b/c$a;)V

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v9, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->i:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v12, v1}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    throw v0

    .line 132
    :cond_15
    :goto_f
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult;->c()Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Status;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/tencent/qqmusic/qzdownloader/downloader/DownloadResult$Status;->a(I)V

    const/4 v1, 0x0

    return v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->METHOD_INVOKE_SWITCHER:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x5

    if-ge v2, v1, :cond_0

    aget v0, v0, v2

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const/4 v4, 0x0

    const v5, 0x12144

    new-array v0, v0, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v0, v2

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v3

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v2, p0

    move v3, v4

    move v4, v5

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyMoreArgs([Ljava/lang/Object;Ljava/lang/Object;ZI[Ljava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v0, :cond_0

    return-void

    .line 284
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object p1, p0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->D:Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public bridge synthetic j()V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/b;->j()V

    return-void
.end method

.method public bridge synthetic k()V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/b;->k()V

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 8

    sget-object v0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->METHOD_INVOKE_SWITCHER:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x7

    if-ge v2, v1, :cond_0

    aget v0, v0, v2

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const v5, 0x12146

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    move-object v3, p0

    invoke-static/range {v2 .. v7}, Lcom/tencent/qqmusic/sword/SwordProxy;->proxyOneArg(Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/Class;Ljava/lang/Class;)Lcom/tencent/qqmusic/sword/SwordProxyResult;

    move-result-object v0

    iget-boolean v1, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->isSupported:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/qqmusic/sword/SwordProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqmusic/qzdownloader/downloader/impl/d;->D:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


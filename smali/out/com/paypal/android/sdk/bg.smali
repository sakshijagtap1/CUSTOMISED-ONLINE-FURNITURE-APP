.class public Lcom/paypal/android/sdk/bg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/bb;


# static fields
.field private static e:I

.field private static f:I


# instance fields
.field private final a:Lcom/paypal/android/sdk/bk;

.field private b:[B

.field private c:Landroid/net/Uri;

.field private d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const v1, 0xea60

    const-class v0, Lcom/paypal/android/sdk/bg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    sput v1, Lcom/paypal/android/sdk/bg;->e:I

    sput v1, Lcom/paypal/android/sdk/bg;->f:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/paypal/android/sdk/bk;

    invoke-static {}, Lcom/paypal/android/sdk/d;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/bk;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/bg;->a:Lcom/paypal/android/sdk/bk;

    return-void
.end method


# virtual methods
.method public final a([B)I
    .registers 11

    const/4 v2, 0x0

    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/paypal/android/sdk/bg;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_bc

    :try_start_12
    sget v1, Lcom/paypal/android/sdk/bg;->f:I

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    sget v1, Lcom/paypal/android/sdk/bg;->e:I

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    iget-object v1, p0, Lcom/paypal/android/sdk/bg;->a:Lcom/paypal/android/sdk/bk;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/bg;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_12 .. :try_end_57} :catchall_58

    goto :goto_38

    :catchall_58
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    :goto_5c
    invoke-static {v2}, Lcom/paypal/android/sdk/d;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/paypal/android/sdk/d;->a(Ljava/io/Closeable;)V

    if-eqz v3, :cond_67

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_67
    throw v0

    :cond_68
    :try_start_68
    array-length v1, p1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_58

    move-result-object v3

    :try_start_70
    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v4

    const/16 v1, 0xc8

    if-ne v4, v1, :cond_b5

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_87
    .catchall {:try_start_70 .. :try_end_87} :catchall_c0

    const/16 v2, 0x400

    :try_start_89
    new-array v2, v2, [B

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_90
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_a3

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_90

    :catchall_9c
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v8

    goto :goto_5c

    :cond_a3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/paypal/android/sdk/bg;->b:[B
    :try_end_a9
    .catchall {:try_start_89 .. :try_end_a9} :catchall_9c

    :goto_a9
    invoke-static {v1}, Lcom/paypal/android/sdk/d;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/paypal/android/sdk/d;->a(Ljava/io/Closeable;)V

    if-eqz v0, :cond_b4

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_b4
    return v4

    :cond_b5
    const/4 v1, 0x0

    :try_start_b6
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/paypal/android/sdk/bg;->b:[B
    :try_end_ba
    .catchall {:try_start_b6 .. :try_end_ba} :catchall_c0

    move-object v1, v2

    goto :goto_a9

    :catchall_bc
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_5c

    :catchall_c0
    move-exception v1

    move-object v8, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v8

    goto :goto_5c
.end method

.method public final a(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/bg;->c:Landroid/net/Uri;

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .registers 2

    iput-object p1, p0, Lcom/paypal/android/sdk/bg;->d:Ljava/util/Map;

    return-void
.end method

.method public final a()[B
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/bg;->b:[B

    return-object v0
.end method

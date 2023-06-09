.class public final Lcom/paypal/android/sdk/aq;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/paypal/android/sdk/aq;->a:Z

    iput-boolean v1, p0, Lcom/paypal/android/sdk/aq;->b:Z

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_42

    :cond_15
    :goto_15
    packed-switch v0, :pswitch_data_4c

    iput-boolean v1, p0, Lcom/paypal/android/sdk/aq;->b:Z

    iput-boolean v1, p0, Lcom/paypal/android/sdk/aq;->a:Z

    :goto_1c
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/aq;->c:Ljava/io/File;

    return-void

    :sswitch_23
    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v0, v1

    goto :goto_15

    :sswitch_2d
    const-string v4, "mounted_ro"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v0, v2

    goto :goto_15

    :pswitch_37
    iput-boolean v2, p0, Lcom/paypal/android/sdk/aq;->b:Z

    iput-boolean v2, p0, Lcom/paypal/android/sdk/aq;->a:Z

    goto :goto_1c

    :pswitch_3c
    iput-boolean v2, p0, Lcom/paypal/android/sdk/aq;->a:Z

    iput-boolean v1, p0, Lcom/paypal/android/sdk/aq;->b:Z

    goto :goto_1c

    nop

    :sswitch_data_42
    .sparse-switch
        0x4a15a678 -> :sswitch_23
        0x4d789964 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_37
        :pswitch_3c
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/aq;->c:Ljava/io/File;

    return-void
.end method

.method public final a(Ljava/lang/String;[B)V
    .registers 7

    iget-boolean v0, p0, Lcom/paypal/android/sdk/aq;->a:Z

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/paypal/android/sdk/aq;->b:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    :try_start_9
    iget-object v1, p0, Lcom/paypal/android/sdk/aq;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/paypal/android/sdk/aq;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_29

    :cond_19
    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lcom/paypal/android/sdk/aq;->c:Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_2d

    :try_start_25
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_35

    move-object v0, v1

    :cond_29
    invoke-static {v0}, Lcom/paypal/android/sdk/d;->a(Ljava/io/Closeable;)V

    :cond_2c
    return-void

    :catchall_2d
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_31
    invoke-static {v1}, Lcom/paypal/android/sdk/d;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_35
    move-exception v0

    goto :goto_31
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/16 v0, 0x400

    new-array v0, v0, [B

    iget-boolean v1, p0, Lcom/paypal/android/sdk/aq;->b:Z

    if-eqz v1, :cond_37

    const/4 v2, 0x0

    :try_start_9
    new-instance v3, Ljava/io/File;

    iget-object v1, p0, Lcom/paypal/android/sdk/aq;->c:Ljava/io/File;

    invoke-direct {v3, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_15} :catch_40
    .catchall {:try_start_9 .. :try_end_15} :catchall_48

    :try_start_15
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    const/16 v4, 0x400

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    :goto_21
    const/4 v4, -0x1

    if-eq v2, v4, :cond_30

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v2, 0x0

    const/16 v4, 0x400

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    goto :goto_21

    :cond_30
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_33} :catch_50
    .catchall {:try_start_15 .. :try_end_33} :catchall_4e

    move-result-object v0

    invoke-static {v1}, Lcom/paypal/android/sdk/d;->a(Ljava/io/Closeable;)V

    :cond_37
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v0, v1

    :goto_3f
    return-object v0

    :catch_40
    move-exception v0

    move-object v1, v2

    :goto_42
    const-string v0, ""

    invoke-static {v1}, Lcom/paypal/android/sdk/d;->a(Ljava/io/Closeable;)V

    goto :goto_3f

    :catchall_48
    move-exception v0

    move-object v1, v2

    :goto_4a
    invoke-static {v1}, Lcom/paypal/android/sdk/d;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_4e
    move-exception v0

    goto :goto_4a

    :catch_50
    move-exception v0

    goto :goto_42
.end method

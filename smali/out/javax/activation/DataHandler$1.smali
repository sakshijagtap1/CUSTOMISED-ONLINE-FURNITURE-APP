.class Ljavax/activation/DataHandler$1;
.super Ljava/lang/Object;
.source "DataHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/activation/DataHandler;

.field private final synthetic val$fdch:Ljavax/activation/DataContentHandler;

.field private final synthetic val$pos:Ljava/io/PipedOutputStream;


# direct methods
.method constructor <init>(Ljavax/activation/DataHandler;Ljava/io/PipedOutputStream;Ljavax/activation/DataContentHandler;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Ljavax/activation/DataHandler$1;->this$0:Ljavax/activation/DataHandler;

    iput-object p2, p0, Ljavax/activation/DataHandler$1;->val$pos:Ljava/io/PipedOutputStream;

    iput-object p3, p0, Ljavax/activation/DataHandler$1;->val$fdch:Ljavax/activation/DataContentHandler;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 279
    :try_start_0
    iget-object v0, p0, Ljavax/activation/DataHandler$1;->val$fdch:Ljavax/activation/DataContentHandler;

    iget-object v1, p0, Ljavax/activation/DataHandler$1;->this$0:Ljavax/activation/DataHandler;

    invoke-static {v1}, Ljavax/activation/DataHandler;->access$0(Ljavax/activation/DataHandler;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Ljavax/activation/DataHandler$1;->this$0:Ljavax/activation/DataHandler;

    invoke-static {v2}, Ljavax/activation/DataHandler;->access$1(Ljavax/activation/DataHandler;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljavax/activation/DataHandler$1;->val$pos:Ljava/io/PipedOutputStream;

    invoke-interface {v0, v1, v2, v3}, Ljavax/activation/DataContentHandler;->writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_19
    .catchall {:try_start_0 .. :try_end_13} :catchall_22

    .line 284
    :try_start_13
    iget-object v0, p0, Ljavax/activation/DataHandler$1;->val$pos:Ljava/io/PipedOutputStream;

    invoke-virtual {v0}, Ljava/io/PipedOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_29

    .line 287
    :goto_18
    return-void

    .line 280
    :catch_19
    move-exception v0

    .line 284
    :try_start_1a
    iget-object v0, p0, Ljavax/activation/DataHandler$1;->val$pos:Ljava/io/PipedOutputStream;

    invoke-virtual {v0}, Ljava/io/PipedOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_20

    goto :goto_18

    .line 285
    :catch_20
    move-exception v0

    goto :goto_18

    .line 282
    :catchall_22
    move-exception v0

    .line 284
    :try_start_23
    iget-object v1, p0, Ljavax/activation/DataHandler$1;->val$pos:Ljava/io/PipedOutputStream;

    invoke-virtual {v1}, Ljava/io/PipedOutputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_28} :catch_2b

    .line 286
    :goto_28
    throw v0

    .line 285
    :catch_29
    move-exception v0

    goto :goto_18

    :catch_2b
    move-exception v1

    goto :goto_28
.end method

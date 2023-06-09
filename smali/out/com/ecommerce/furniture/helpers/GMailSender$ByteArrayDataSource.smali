.class public Lcom/ecommerce/furniture/helpers/GMailSender$ByteArrayDataSource;
.super Ljava/lang/Object;
.source "GMailSender.java"

# interfaces
.implements Ljavax/activation/DataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecommerce/furniture/helpers/GMailSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ByteArrayDataSource"
.end annotation


# instance fields
.field private data:[B

.field final synthetic this$0:Lcom/ecommerce/furniture/helpers/GMailSender;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ecommerce/furniture/helpers/GMailSender;[B)V
    .registers 3
    .param p1, "this$0"    # Lcom/ecommerce/furniture/helpers/GMailSender;
    .param p2, "data"    # [B

    .prologue
    .line 90
    iput-object p1, p0, Lcom/ecommerce/furniture/helpers/GMailSender$ByteArrayDataSource;->this$0:Lcom/ecommerce/furniture/helpers/GMailSender;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p2, p0, Lcom/ecommerce/furniture/helpers/GMailSender$ByteArrayDataSource;->data:[B

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/ecommerce/furniture/helpers/GMailSender;[BLjava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/ecommerce/furniture/helpers/GMailSender;
    .param p2, "data"    # [B
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/ecommerce/furniture/helpers/GMailSender$ByteArrayDataSource;->this$0:Lcom/ecommerce/furniture/helpers/GMailSender;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/ecommerce/furniture/helpers/GMailSender$ByteArrayDataSource;->data:[B

    .line 87
    iput-object p3, p0, Lcom/ecommerce/furniture/helpers/GMailSender$ByteArrayDataSource;->type:Ljava/lang/String;

    .line 88
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ecommerce/furniture/helpers/GMailSender$ByteArrayDataSource;->type:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 101
    const-string v0, "application/octet-stream"

    .line 103
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/ecommerce/furniture/helpers/GMailSender$ByteArrayDataSource;->type:Ljava/lang/String;

    goto :goto_6
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/ecommerce/furniture/helpers/GMailSender$ByteArrayDataSource;->data:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    const-string v0, "ByteArrayDataSource"

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not Supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/ecommerce/furniture/helpers/GMailSender$ByteArrayDataSource;->type:Ljava/lang/String;

    .line 97
    return-void
.end method

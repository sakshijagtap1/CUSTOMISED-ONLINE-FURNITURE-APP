.class Ljavax/mail/util/ByteArrayDataSource$DSByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "ByteArrayDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/util/ByteArrayDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DSByteArrayOutputStream"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuf()[B
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Ljavax/mail/util/ByteArrayDataSource$DSByteArrayOutputStream;->buf:[B

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Ljavax/mail/util/ByteArrayDataSource$DSByteArrayOutputStream;->count:I

    return v0
.end method

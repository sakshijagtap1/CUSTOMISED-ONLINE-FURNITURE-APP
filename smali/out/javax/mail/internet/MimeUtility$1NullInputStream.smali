.class Ljavax/mail/internet/MimeUtility$1NullInputStream;
.super Ljava/io/InputStream;
.source "MimeUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NullInputStream"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1173
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .registers 2

    .prologue
    .line 1175
    const/4 v0, 0x0

    return v0
.end method

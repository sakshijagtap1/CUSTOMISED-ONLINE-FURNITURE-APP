.class Ljavax/mail/internet/ParameterList$ParamEnum;
.super Ljava/lang/Object;
.source "ParameterList.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/ParameterList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParamEnum"
.end annotation


# instance fields
.field private it:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .registers 2
    .param p1, "it"    # Ljava/util/Iterator;

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Ljavax/mail/internet/ParameterList$ParamEnum;->it:Ljava/util/Iterator;

    .line 188
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Ljavax/mail/internet/ParameterList$ParamEnum;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Ljavax/mail/internet/ParameterList$ParamEnum;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

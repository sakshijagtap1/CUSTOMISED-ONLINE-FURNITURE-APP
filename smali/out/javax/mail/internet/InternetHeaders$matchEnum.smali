.class Ljavax/mail/internet/InternetHeaders$matchEnum;
.super Ljava/lang/Object;
.source "InternetHeaders.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/InternetHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "matchEnum"
.end annotation


# instance fields
.field private e:Ljava/util/Iterator;

.field private match:Z

.field private names:[Ljava/lang/String;

.field private next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

.field private want_line:Z


# direct methods
.method constructor <init>(Ljava/util/List;[Ljava/lang/String;ZZ)V
    .registers 6
    .param p1, "v"    # Ljava/util/List;
    .param p2, "n"    # [Ljava/lang/String;
    .param p3, "m"    # Z
    .param p4, "l"    # Z

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->e:Ljava/util/Iterator;

    .line 170
    iput-object p2, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->names:[Ljava/lang/String;

    .line 171
    iput-boolean p3, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->match:Z

    .line 172
    iput-boolean p4, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->want_line:Z

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 174
    return-void
.end method

.method private nextMatch()Ljavax/mail/internet/InternetHeaders$InternetHeader;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 211
    :cond_1
    iget-object v3, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->e:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_b

    move-object v0, v2

    .line 238
    :cond_a
    :goto_a
    return-object v0

    .line 212
    :cond_b
    iget-object v3, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->e:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 215
    .local v0, "h":Ljavax/mail/internet/InternetHeaders$InternetHeader;
    iget-object v3, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 219
    iget-object v3, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->names:[Ljava/lang/String;

    if-nez v3, :cond_21

    .line 220
    iget-boolean v3, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->match:Z

    if-eqz v3, :cond_a

    move-object v0, v2

    goto :goto_a

    .line 223
    :cond_21
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    iget-object v3, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->names:[Ljava/lang/String;

    array-length v3, v3

    if-lt v1, v3, :cond_2c

    .line 235
    iget-boolean v3, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->match:Z

    if-nez v3, :cond_1

    goto :goto_a

    .line 224
    :cond_2c
    iget-object v3, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->names:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 225
    iget-boolean v3, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->match:Z

    if-eqz v3, :cond_1

    goto :goto_a

    .line 223
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_22
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-nez v0, :cond_a

    .line 183
    invoke-direct {p0}, Ljavax/mail/internet/InternetHeaders$matchEnum;->nextMatch()Ljavax/mail/internet/InternetHeaders$InternetHeader;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 184
    :cond_a
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 191
    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-nez v1, :cond_a

    .line 192
    invoke-direct {p0}, Ljavax/mail/internet/InternetHeaders$matchEnum;->nextMatch()Ljavax/mail/internet/InternetHeaders$InternetHeader;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 194
    :cond_a
    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-nez v1, :cond_16

    .line 195
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "No more headers"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_16
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 198
    .local v0, "h":Ljavax/mail/internet/InternetHeaders$InternetHeader;
    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 199
    iget-boolean v1, p0, Ljavax/mail/internet/InternetHeaders$matchEnum;->want_line:Z

    if-eqz v1, :cond_22

    .line 200
    iget-object v1, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    .line 202
    :goto_21
    return-object v1

    :cond_22
    new-instance v1, Ljavax/mail/Header;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/mail/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method

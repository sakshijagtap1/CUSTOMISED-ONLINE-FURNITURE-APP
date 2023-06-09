.class public Ljavax/mail/internet/ContentDisposition;
.super Ljava/lang/Object;
.source "ContentDisposition.java"


# instance fields
.field private disposition:Ljava/lang/String;

.field private list:Ljavax/mail/internet/ParameterList;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer;

    const-string v3, "()<>@,;:\\\"\t []/?="

    invoke-direct {v0, p1, v3}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .local v0, "h":Ljavax/mail/internet/HeaderTokenizer;
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v2

    .line 93
    .local v2, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1b

    .line 94
    new-instance v3, Ljavax/mail/internet/ParseException;

    invoke-direct {v3}, Ljavax/mail/internet/ParseException;-><init>()V

    throw v3

    .line 95
    :cond_1b
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljavax/mail/internet/ContentDisposition;->disposition:Ljava/lang/String;

    .line 98
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->getRemainder()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "rem":Ljava/lang/String;
    if-eqz v1, :cond_2e

    .line 100
    new-instance v3, Ljavax/mail/internet/ParameterList;

    invoke-direct {v3, v1}, Ljavax/mail/internet/ParameterList;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    .line 101
    :cond_2e
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V
    .registers 3
    .param p1, "disposition"    # Ljava/lang/String;
    .param p2, "list"    # Ljavax/mail/internet/ParameterList;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Ljavax/mail/internet/ContentDisposition;->disposition:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    .line 76
    return-void
.end method


# virtual methods
.method public getDisposition()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Ljavax/mail/internet/ContentDisposition;->disposition:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    if-nez v0, :cond_6

    .line 120
    const/4 v0, 0x0

    .line 122
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/ParameterList;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getParameterList()Ljavax/mail/internet/ParameterList;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    return-object v0
.end method

.method public setDisposition(Ljava/lang/String;)V
    .registers 2
    .param p1, "disposition"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Ljavax/mail/internet/ContentDisposition;->disposition:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v0, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    if-nez v0, :cond_b

    .line 155
    new-instance v0, Ljavax/mail/internet/ParameterList;

    invoke-direct {v0}, Ljavax/mail/internet/ParameterList;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    .line 157
    :cond_b
    iget-object v0, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public setParameterList(Ljavax/mail/internet/ParameterList;)V
    .registers 2
    .param p1, "list"    # Ljavax/mail/internet/ParameterList;

    .prologue
    .line 166
    iput-object p1, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    .line 167
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 178
    iget-object v1, p0, Ljavax/mail/internet/ContentDisposition;->disposition:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 179
    const/4 v1, 0x0

    .line 190
    :goto_5
    return-object v1

    .line 181
    :cond_6
    iget-object v1, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    if-nez v1, :cond_d

    .line 182
    iget-object v1, p0, Ljavax/mail/internet/ContentDisposition;->disposition:Ljava/lang/String;

    goto :goto_5

    .line 184
    :cond_d
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljavax/mail/internet/ContentDisposition;->disposition:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljavax/mail/internet/ContentDisposition;->list:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ParameterList;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5
.end method

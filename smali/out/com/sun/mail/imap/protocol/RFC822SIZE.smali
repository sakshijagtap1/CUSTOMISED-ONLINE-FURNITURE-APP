.class public Lcom/sun/mail/imap/protocol/RFC822SIZE;
.super Ljava/lang/Object;
.source "RFC822SIZE.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field static final name:[C


# instance fields
.field public msgno:I

.field public size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const/16 v0, 0xb

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sun/mail/imap/protocol/RFC822SIZE;->name:[C

    .line 52
    return-void

    .line 54
    :array_a
    .array-data 2
        0x52s
        0x46s
        0x43s
        0x38s
        0x32s
        0x32s
        0x2es
        0x53s
        0x49s
        0x5as
        0x45s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
    .registers 3
    .param p1, "r"    # Lcom/sun/mail/imap/protocol/FetchResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/RFC822SIZE;->msgno:I

    .line 65
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 66
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/RFC822SIZE;->size:I

    .line 67
    return-void
.end method

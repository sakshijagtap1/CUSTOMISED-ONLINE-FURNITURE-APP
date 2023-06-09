.class Ljavax/activation/DataSourceDataContentHandler;
.super Ljava/lang/Object;
.source "DataHandler.java"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# instance fields
.field private dch:Ljavax/activation/DataContentHandler;

.field private ds:Ljavax/activation/DataSource;

.field private transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;


# direct methods
.method public constructor <init>(Ljavax/activation/DataContentHandler;Ljavax/activation/DataSource;)V
    .registers 4
    .param p1, "dch"    # Ljavax/activation/DataContentHandler;
    .param p2, "ds"    # Ljavax/activation/DataSource;

    .prologue
    const/4 v0, 0x0

    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    iput-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->ds:Ljavax/activation/DataSource;

    .line 753
    iput-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    .line 754
    iput-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    .line 760
    iput-object p2, p0, Ljavax/activation/DataSourceDataContentHandler;->ds:Ljavax/activation/DataSource;

    .line 761
    iput-object p1, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    .line 762
    return-void
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .registers 3
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 802
    iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_b

    .line 803
    iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    invoke-interface {v0, p1}, Ljavax/activation/DataContentHandler;->getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    .line 805
    :goto_a
    return-object v0

    :cond_b
    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_a
.end method

.method public getTransferData(Lmyjava/awt/datatransfer/DataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;
    .registers 5
    .param p1, "df"    # Lmyjava/awt/datatransfer/DataFlavor;
    .param p2, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyjava/awt/datatransfer/UnsupportedFlavorException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 792
    iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_b

    .line 793
    iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    invoke-interface {v0, p1, p2}, Ljavax/activation/DataContentHandler;->getTransferData(Lmyjava/awt/datatransfer/DataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    .line 795
    :goto_a
    return-object v0

    .line 794
    :cond_b
    invoke-virtual {p0}, Ljavax/activation/DataSourceDataContentHandler;->getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lmyjava/awt/datatransfer/DataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 795
    invoke-interface {p2}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_a

    .line 797
    :cond_1d
    new-instance v0, Lmyjava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v0, p1}, Lmyjava/awt/datatransfer/UnsupportedFlavorException;-><init>(Lmyjava/awt/datatransfer/DataFlavor;)V

    throw v0
.end method

.method public getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;
    .registers 6

    .prologue
    .line 770
    iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    if-nez v0, :cond_10

    .line 771
    iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_13

    .line 772
    iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    invoke-interface {v0}, Ljavax/activation/DataContentHandler;->getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    .line 780
    :cond_10
    :goto_10
    iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    return-object v0

    .line 774
    :cond_13
    const/4 v0, 0x1

    new-array v0, v0, [Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    .line 775
    iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->transferFlavors:[Lmyjava/awt/datatransfer/DataFlavor;

    const/4 v1, 0x0

    .line 776
    new-instance v2, Ljavax/activation/ActivationDataFlavor;

    iget-object v3, p0, Ljavax/activation/DataSourceDataContentHandler;->ds:Ljavax/activation/DataSource;

    invoke-interface {v3}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 777
    iget-object v4, p0, Ljavax/activation/DataSourceDataContentHandler;->ds:Ljavax/activation/DataSource;

    invoke-interface {v4}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 776
    invoke-direct {v2, v3, v4}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    aput-object v2, v0, v1

    goto :goto_10
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 813
    iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_a

    .line 814
    iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    invoke-interface {v0, p1, p2, p3}, Ljavax/activation/DataContentHandler;->writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 818
    return-void

    .line 816
    :cond_a
    new-instance v0, Ljavax/activation/UnsupportedDataTypeException;

    .line 817
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no DCH for content type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljavax/activation/DataSourceDataContentHandler;->ds:Ljavax/activation/DataSource;

    invoke-interface {v2}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 816
    invoke-direct {v0, v1}, Ljavax/activation/UnsupportedDataTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

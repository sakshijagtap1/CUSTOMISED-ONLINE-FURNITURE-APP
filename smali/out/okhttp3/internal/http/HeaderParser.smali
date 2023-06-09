.class public final Lokhttp3/internal/http/HeaderParser;
.super Ljava/lang/Object;
.source "HeaderParser.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static parseSeconds(Ljava/lang/String;I)I
    .registers 8
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 52
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_19

    move-result-wide v2

    .line 53
    .local v2, "seconds":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_f

    .line 54
    const p1, 0x7fffffff

    .line 61
    .end local v2    # "seconds":J
    .end local p1    # "defaultValue":I
    :goto_e
    return p1

    .line 55
    .restart local v2    # "seconds":J
    .restart local p1    # "defaultValue":I
    :cond_f
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_17

    .line 56
    const/4 p1, 0x0

    goto :goto_e

    .line 58
    :cond_17
    long-to-int p1, v2

    goto :goto_e

    .line 60
    .end local v2    # "seconds":J
    :catch_19
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_e
.end method

.method public static skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "characters"    # Ljava/lang/String;

    .prologue
    .line 24
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_11

    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 29
    :cond_11
    return p1

    .line 24
    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static skipWhitespace(Ljava/lang/String;I)I
    .registers 4
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I

    .prologue
    .line 37
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_12

    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 39
    .local v0, "c":C
    const/16 v1, 0x20

    if-eq v0, v1, :cond_13

    const/16 v1, 0x9

    if-eq v0, v1, :cond_13

    .line 43
    .end local v0    # "c":C
    :cond_12
    return p1

    .line 37
    .restart local v0    # "c":C
    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

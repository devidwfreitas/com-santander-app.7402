.class final Lexr;
.super Lexv;
.source "SourceFile"


# direct methods
.method constructor <init>(Lets;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lexv;-><init>(Lets;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected a(I)I
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    .line 54
    :goto_0
    return p1

    :cond_0
    add-int/lit16 p1, p1, -0x2710

    goto :goto_0
.end method

.method protected a(Ljava/lang/StringBuilder;I)V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x2710

    if-ge p2, v0, :cond_0

    .line 43
    const-string v0, "(3202)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string v0, "(3203)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

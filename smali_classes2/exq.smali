.class final Lexq;
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
    .locals 0

    .prologue
    .line 47
    return p1
.end method

.method protected a(Ljava/lang/StringBuilder;I)V
    .locals 1

    .prologue
    .line 42
    const-string v0, "(3103)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    return-void
.end method

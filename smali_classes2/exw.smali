.class final Lexw;
.super Lexx;
.source "SourceFile"


# static fields
.field private static final b:I = 0x4


# direct methods
.method constructor <init>(Lets;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lexx;-><init>(Lets;)V

    .line 43
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    const-string v1, "(01)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 51
    invoke-virtual {p0}, Lexw;->c()Leyj;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Leyj;->a(II)I

    move-result v2

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2, v1}, Lexw;->a(Ljava/lang/StringBuilder;II)V

    .line 56
    invoke-virtual {p0}, Lexw;->c()Leyj;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v0, v2}, Leyj;->a(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lhvj;
.super Lhfn;
.source "SourceFile"


# instance fields
.field final synthetic e:Lhuy;

.field final synthetic f:Lhve;


# direct methods
.method constructor <init>(Lhve;Lhuy;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lhvj;->f:Lhve;

    iput-object p2, p0, Lhvj;->e:Lhuy;

    invoke-direct {p0}, Lhfn;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const-string v0, "Termos e Condi\u00e7\u00f5es"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string v0, ""

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lhvj;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Lbfj;
    .locals 3

    .prologue
    .line 137
    new-instance v0, Lbfj;

    invoke-direct {v0}, Lbfj;-><init>()V

    .line 138
    iget-object v1, p0, Lhvj;->f:Lhve;

    iget-object v2, p0, Lhvj;->e:Lhuy;

    invoke-virtual {v2}, Lhuy;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhve;->a(Lhve;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 139
    return-object v0
.end method

.method public synthetic j()Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lhvj;->i()Lbfj;

    move-result-object v0

    return-object v0
.end method

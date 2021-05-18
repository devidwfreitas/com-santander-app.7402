.class Lhmq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhgb;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic e:Lhmp;


# direct methods
.method constructor <init>(Lhmp;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lhmq;->e:Lhmp;

    iput-object p2, p0, Lhmq;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const-string v0, "Termos e Condi\u00e7\u00f5es"

    return-object v0
.end method

.method public c()Lbfj;
    .locals 2

    .prologue
    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lhmq;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_0
    new-instance v1, Lbfj;

    invoke-direct {v1, v0}, Lbfj;-><init>(Ljava/lang/CharSequence;)V

    return-object v1

    .line 160
    :cond_0
    iget-object v0, p0, Lhmq;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string v0, ""

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-string v0, ""

    return-object v0
.end method

.method public synthetic j()Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lhmq;->c()Lbfj;

    move-result-object v0

    return-object v0
.end method

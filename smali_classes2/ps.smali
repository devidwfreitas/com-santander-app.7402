.class Lps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laar;


# instance fields
.field final synthetic a:Lpc;


# direct methods
.method constructor <init>(Lpc;)V
    .locals 0

    .prologue
    .line 1096
    iput-object p1, p0, Lps;->a:Lpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1099
    iget-object v0, p0, Lps;->a:Lpc;

    invoke-static {v0}, Lpc;->Y(Lpc;)V

    .line 1101
    sget-object v0, Labt;->PROGRESSIVE_INDEX:Labt;

    invoke-virtual {v0}, Labt;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1102
    iget-object v1, p0, Lps;->a:Lpc;

    invoke-static {v1}, Lpc;->Z(Lpc;)Lom;

    move-result-object v1

    invoke-virtual {v1, v0}, Lom;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lps;->a:Lpc;

    .line 1103
    invoke-static {v1}, Lpc;->Z(Lpc;)Lom;

    move-result-object v1

    invoke-virtual {v1, v0}, Lom;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lps;->a:Lpc;

    .line 1104
    invoke-static {v0}, Lpc;->h(Lpc;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1106
    :goto_0
    if-eqz v0, :cond_1

    .line 1112
    :goto_1
    iget-object v0, p0, Lps;->a:Lpc;

    invoke-static {v0}, Lpc;->X(Lpc;)V

    .line 1113
    return-void

    .line 1104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1109
    :cond_1
    iget-object v0, p0, Lps;->a:Lpc;

    iget-object v1, p0, Lps;->a:Lpc;

    invoke-static {v1}, Lpc;->aa(Lpc;)Z

    move-result v1

    invoke-static {v0, v1}, Lpc;->b(Lpc;Z)V

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1117
    iget-object v0, p0, Lps;->a:Lpc;

    invoke-static {v0}, Lpc;->V(Lpc;)V

    .line 1118
    iget-object v0, p0, Lps;->a:Lpc;

    invoke-static {v0}, Lpc;->X(Lpc;)V

    .line 1119
    return-void
.end method

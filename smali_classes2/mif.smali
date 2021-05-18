.class Lmif;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmhu;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lmie;


# direct methods
.method constructor <init>(Lmie;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lmif;->c:Lmie;

    iput-object p2, p0, Lmif;->a:Ljava/lang/String;

    iput-object p3, p0, Lmif;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lmif;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lmif;->c:Lmie;

    invoke-virtual {v0}, Lmie;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lmif;->c:Lmie;

    invoke-static {v1}, Lmie;->a(Lmie;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lmif;->c:Lmie;

    invoke-virtual {v0}, Lmie;->dismiss()V

    .line 121
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lmif;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lmif;->c:Lmie;

    invoke-virtual {v0}, Lmie;->b()V

    goto :goto_0

    .line 118
    :cond_1
    const-string v0, "%s %s: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmif;->c:Lmie;

    invoke-static {v3}, Lmie;->b(Lmie;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lmif;->c:Lmie;

    invoke-static {v3}, Lmie;->c(Lmie;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lmif;->c:Lmie;

    invoke-static {v3}, Lmie;->a(Lmie;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmif;->c:Lmie;

    invoke-virtual {v1}, Lmie;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 119
    iget-object v0, p0, Lmif;->c:Lmie;

    invoke-virtual {v0}, Lmie;->dismiss()V

    goto :goto_0
.end method

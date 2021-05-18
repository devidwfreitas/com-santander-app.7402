.class Lldd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llcy;


# direct methods
.method constructor <init>(Llcy;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lldd;->a:Llcy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lldd;->a:Llcy;

    invoke-static {v0}, Llcy;->f(Llcy;)Llde;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lldd;->a:Llcy;

    invoke-static {v0}, Llcy;->b(Llcy;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lldd;->a:Llcy;

    invoke-static {v1}, Llcy;->d(Llcy;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    sput-object v0, Lldn;->a:Ljava/lang/String;

    .line 142
    sput-object v1, Lldn;->b:Ljava/lang/String;

    .line 143
    iget-object v2, p0, Lldd;->a:Llcy;

    invoke-static {v2}, Llcy;->f(Llcy;)Llde;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Llde;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    return-void
.end method

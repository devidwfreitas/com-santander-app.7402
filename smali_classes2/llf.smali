.class Lllf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lkrt;

.field final synthetic b:Lllj;

.field final synthetic c:Llld;


# direct methods
.method constructor <init>(Llld;Lkrt;Lllj;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lllf;->c:Llld;

    iput-object p2, p0, Lllf;->a:Lkrt;

    iput-object p3, p0, Lllf;->b:Lllj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 79
    if-eqz p2, :cond_2

    .line 80
    iget-object v0, p0, Lllf;->c:Llld;

    invoke-static {v0}, Llld;->c(Llld;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e01d9

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 81
    iget-object v0, p0, Lllf;->a:Lkrt;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Lkrt;->c(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lllf;->a:Lkrt;

    invoke-virtual {v0}, Lkrt;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lllf;->a:Lkrt;

    invoke-virtual {v1}, Lkrt;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lllf;->c:Llld;

    iget-object v1, p0, Lllf;->b:Lllj;

    invoke-static {v0, v1}, Llld;->a(Llld;Lllj;)V

    .line 88
    :goto_0
    iget-object v0, p0, Lllf;->c:Llld;

    invoke-static {v0}, Llld;->a(Llld;)Llll;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lllf;->c:Llld;

    invoke-static {v0}, Llld;->a(Llld;)Llll;

    move-result-object v0

    iget-object v1, p0, Lllf;->c:Llld;

    invoke-static {v1}, Llld;->b(Llld;)Z

    move-result v1

    invoke-interface {v0, v1}, Llll;->a(Z)V

    .line 91
    :cond_0
    iget-object v0, p0, Lllf;->b:Lllj;

    invoke-static {v0}, Lllj;->c(Lllj;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatRadioButton;->setChecked(Z)V

    .line 95
    :goto_1
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lllf;->c:Llld;

    iget-object v1, p0, Lllf;->b:Lllj;

    invoke-static {v0, v1}, Llld;->b(Llld;Lllj;)V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lllf;->c:Llld;

    invoke-static {v0}, Llld;->c(Llld;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e01da

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method

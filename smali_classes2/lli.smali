.class Llli;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lllj;

.field final synthetic b:Llld;


# direct methods
.method constructor <init>(Llld;Lllj;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Llli;->b:Llld;

    iput-object p2, p0, Llli;->a:Lllj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Llli;->a:Lllj;

    invoke-static {v0}, Lllj;->c(Lllj;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatRadioButton;->setChecked(Z)V

    .line 137
    return-void
.end method

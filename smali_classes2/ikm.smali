.class Likm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Landroid/widget/EditText;

.field final synthetic d:Likl;


# direct methods
.method constructor <init>(Likl;Landroid/widget/CheckBox;Landroid/widget/LinearLayout;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Likm;->d:Likl;

    iput-object p2, p0, Likm;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Likm;->b:Landroid/widget/LinearLayout;

    iput-object p4, p0, Likm;->c:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Likm;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Likm;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Likm;->c:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Likm;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

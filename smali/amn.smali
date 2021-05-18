.class public Lamn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;


# direct methods
.method public constructor <init>(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lamn;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 217
    iget-object v0, p0, Lamn;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-virtual {v0, p0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 218
    iget-object v0, p0, Lamn;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->g(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)V

    .line 219
    iget-object v0, p0, Lamn;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->h(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)V

    .line 220
    iget-object v0, p0, Lamn;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-virtual {v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lamn;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->i(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 223
    iget-object v0, p0, Lamn;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iget-object v0, v0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->a:Lamh;

    iget-object v1, p0, Lamn;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->i(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)I

    move-result v1

    invoke-interface {v0, v1}, Lamh;->a(I)V

    .line 224
    iget-object v0, p0, Lamn;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v0, v2}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->a(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;I)I

    .line 228
    :goto_1
    iget-object v0, p0, Lamn;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->a(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;Z)Z

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lamn;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iget-object v0, v0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->a:Lamh;

    invoke-interface {v0}, Lamh;->a()V

    goto :goto_1
.end method

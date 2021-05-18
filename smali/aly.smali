.class public Laly;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbr/com/santander/uisdk/SantanderSwitch;


# direct methods
.method public constructor <init>(Lbr/com/santander/uisdk/SantanderSwitch;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Laly;->a:Lbr/com/santander/uisdk/SantanderSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 158
    iget-object v1, p0, Laly;->a:Lbr/com/santander/uisdk/SantanderSwitch;

    iget-object v0, p0, Laly;->a:Lbr/com/santander/uisdk/SantanderSwitch;

    invoke-static {v0}, Lbr/com/santander/uisdk/SantanderSwitch;->a(Lbr/com/santander/uisdk/SantanderSwitch;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lbr/com/santander/uisdk/SantanderSwitch;->setChecked(Z)V

    .line 159
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

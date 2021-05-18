.class Lank;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lani;

.field final synthetic b:Lanj;


# direct methods
.method constructor <init>(Lanj;Lani;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lank;->b:Lanj;

    iput-object p2, p0, Lank;->a:Lani;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lank;->b:Lanj;

    iget-object v0, v0, Lanj;->a:Lani;

    invoke-static {v0}, Lani;->a(Lani;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lank;->b:Lanj;

    invoke-virtual {v1}, Lanj;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/error/SantanderErrorItem;

    .line 65
    invoke-virtual {v0}, Lbr/com/santander/uisdk/error/SantanderErrorItem;->d()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v0}, Lbr/com/santander/uisdk/error/SantanderErrorItem;->d()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 68
    :cond_0
    return-void
.end method

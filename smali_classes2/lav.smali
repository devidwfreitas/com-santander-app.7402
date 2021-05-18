.class Llav;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lkon;

.field final synthetic b:Llau;


# direct methods
.method constructor <init>(Llau;Lkon;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Llav;->b:Llau;

    iput-object p2, p0, Llav;->a:Lkon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Llav;->b:Llau;

    invoke-static {v0}, Llau;->a(Llau;)Llaw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Llav;->b:Llau;

    invoke-static {v0}, Llau;->a(Llau;)Llaw;

    move-result-object v0

    iget-object v1, p0, Llav;->a:Lkon;

    invoke-interface {v0, v1}, Llaw;->a(Lkon;)V

    .line 55
    :cond_0
    return-void
.end method

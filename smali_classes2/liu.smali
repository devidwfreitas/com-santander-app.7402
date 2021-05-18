.class Lliu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llis;


# direct methods
.method constructor <init>(Llis;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lliu;->a:Llis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lliu;->a:Llis;

    invoke-virtual {v0}, Llis;->dismiss()V

    .line 108
    return-void
.end method

.class Llnq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llnp;


# direct methods
.method constructor <init>(Llnp;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Llnq;->a:Llnp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Llnq;->a:Llnp;

    invoke-virtual {v0}, Llnp;->dismiss()V

    .line 92
    return-void
.end method

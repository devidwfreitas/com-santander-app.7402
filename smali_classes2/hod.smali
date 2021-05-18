.class Lhod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lhob;

.field final synthetic b:Lhoc;


# direct methods
.method constructor <init>(Lhoc;Lhob;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lhod;->b:Lhoc;

    iput-object p2, p0, Lhod;->a:Lhob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lhod;->b:Lhoc;

    iget-object v0, v0, Lhoc;->b:Lhob;

    invoke-virtual {v0}, Lhob;->b()V

    .line 91
    return-void
.end method

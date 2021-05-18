.class Lpa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lpb;

.field final synthetic b:Loz;


# direct methods
.method constructor <init>(Loz;Lpb;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lpa;->b:Loz;

    iput-object p2, p0, Lpa;->a:Lpb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lpa;->b:Loz;

    iget-object v1, p0, Lpa;->a:Lpb;

    invoke-virtual {v1}, Lpb;->getAdapterPosition()I

    move-result v1

    invoke-static {v0, v1}, Loz;->a(Loz;I)V

    return-void
.end method

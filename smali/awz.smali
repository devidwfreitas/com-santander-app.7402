.class Lawz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laxc;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lawu;


# direct methods
.method constructor <init>(Lawu;I)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lawz;->b:Lawu;

    iput p2, p0, Lawz;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lawr;)V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lawz;->b:Lawu;

    iget v1, p0, Lawz;->a:I

    invoke-virtual {v0, v1}, Lawu;->a(I)V

    .line 445
    return-void
.end method

.class Lkpd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "street"
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "complement"
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "neighborhood"
    .end annotation
.end field

.field d:Lkpe;
    .annotation runtime Leks;
        a = "county"
    .end annotation
.end field

.field e:Lkpf;
    .annotation runtime Leks;
        a = "state"
    .end annotation
.end field

.field f:Ljava/lang/String;
    .annotation runtime Leks;
        a = "zipCode"
    .end annotation
.end field

.field final synthetic g:Lkpc;


# direct methods
.method constructor <init>(Lkpc;)V
    .locals 1

    .prologue
    .line 199
    iput-object p1, p0, Lkpd;->g:Lkpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Lkpe;

    invoke-direct {v0, p0}, Lkpe;-><init>(Lkpd;)V

    iput-object v0, p0, Lkpd;->d:Lkpe;

    .line 209
    new-instance v0, Lkpf;

    invoke-direct {v0, p0}, Lkpf;-><init>(Lkpd;)V

    iput-object v0, p0, Lkpd;->e:Lkpf;

    return-void
.end method

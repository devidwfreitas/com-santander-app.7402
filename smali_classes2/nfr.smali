.class public interface abstract Lnfr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lnfr;

.field public static final b:Lnfr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lnfs;

    invoke-direct {v0}, Lnfs;-><init>()V

    sput-object v0, Lnfr;->a:Lnfr;

    .line 44
    new-instance v0, Lnft;

    invoke-direct {v0}, Lnft;-><init>()V

    sput-object v0, Lnfr;->b:Lnfr;

    return-void
.end method


# virtual methods
.method public abstract a(Lnfg;)V
.end method

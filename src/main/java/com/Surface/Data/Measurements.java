package com.Surface.Data;

import java.util.Objects;

public class Measurements {
    private float depthNS;
    private float depthWE;

    public float getDepthNS() {
        return depthNS;
    }

    public float getDepthWE() {
        return depthWE;
    }

    public void setDepthNS(float depthNS) {
        this.depthNS = depthNS;
    }

    public void setDepthWE(float depthWE) {
        this.depthWE = depthWE;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null) return false;
        if (this == o) return true;
        if (!(o instanceof Measurements)) return false;
        Measurements that = (Measurements) o;
        return Float.compare(that.depthNS, depthNS) == 0 && Float.compare(that.depthWE, depthWE) == 0;
    }

    @Override
    public int hashCode() {
        return Objects.hash(depthNS, depthWE);
    }

    @Override
    public String toString() {
        return "Measurements{" +
                "depthNS=" + depthNS +
                ", depthWE=" + depthWE +
                '}';
    }
}

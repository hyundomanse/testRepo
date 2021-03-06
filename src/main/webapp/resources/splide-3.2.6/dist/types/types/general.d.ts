import * as CoreComponents from '../components';
import { Splide } from '../core/Splide/Splide';
import { Options } from './options';
/**
 * The type for any function.
 *
 * @since 3.0.0
 */
export declare type AnyFunction = (...args: any[]) => any;
/**
 * The type for a component.
 *
 * @since 3.0.0
 */
export declare type ComponentConstructor = (Splide: Splide, Components: Components, options: Options) => BaseComponent;
/**
 * The interface for any component.
 *
 * @since 3.0.0
 */
export interface BaseComponent {
    setup?(): void;
    mount?(): void;
    destroy?(completely?: boolean): void;
}
/**
 * The interface for the Transition component.
 *
 * @since 3.0.0
 */
export interface TransitionComponent extends BaseComponent {
    start(index: number, done: () => void): void;
    cancel(): void;
}
/**
 * The type for all component constructors.
 *
 * @since 3.0.0
 */
export declare type Components = Record<string, BaseComponent> & Partial<{
    [K in keyof typeof CoreComponents]: ReturnType<typeof CoreComponents[K]>;
}> & {
    Transition: TransitionComponent;
};
//# sourceMappingURL=../../../src/js/types/general.d.ts.map